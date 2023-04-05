import 'package:flutter/material.dart';
import 'package:restaurant_ui/shared/styles/app-color.dart';
import 'package:restaurant_ui/shared/styles/dimension.dart';
import 'package:restaurant_ui/shared/widget/small-text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText=true;
  double textHeight =Dimension.screenHeight/ 5.63;
  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf= widget.text.substring(0,textHeight.toInt());
      secondHalf= widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else {
      firstHalf=widget.text;
      secondHalf="";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(text: firstHalf):Column(
        children: [
                SmallText(
                    height: Dimension.textHeight,
                    color: AppColor.paraColor,
                    size: Dimension.font16,
                    text: hiddenText
                        ? ("$firstHalf...")
                        : (firstHalf + secondHalf)),
                InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });

            },
            child: Row(
              children: [
                SmallText(size:Dimension.font16,text: hiddenText?"Show more":"Show less",color: AppColor.mainColor ,),
                Icon(hiddenText? Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColor.mainColor )

              ],
            ),
          )
        ],
      ),
    );
  }
}
