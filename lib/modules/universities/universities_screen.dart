import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universities_app/modules/universities/UniversitiesModel.dart';
import 'package:universities_app/modules/universities/universities_view_model.dart';
import 'package:universities_app/modules/utils/color_constants.dart';
import 'package:universities_app/modules/utils/size_constants.dart';
import 'package:universities_app/modules/utils/text_styles.dart';

import '../custom_widgets/loading_widget.dart';

class UniversitiesScreen extends StatefulWidget {
  const UniversitiesScreen({Key? key}) : super(key: key);

  @override
  State<UniversitiesScreen> createState() => _UniversitiesScreenState();
}

class _UniversitiesScreenState extends State<UniversitiesScreen> {

  late UniversitiesViewModel universitiesViewModel;

  @override
  void initState() {
    super.initState();
    universitiesViewModel = Provider.of<UniversitiesViewModel>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<UniversitiesViewModel>(context, listen: false).getDashboardData(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Universities"),backgroundColor: ColorConstants.cBlack),
      body: Consumer<UniversitiesViewModel>(
        builder: (context, value, child) {
          return  Stack(
            children: [
              buildDashboardUI(context, value.universityData),
              if(value.loading)
                const LoadingWidget()
            ],
          );
        },
      ),
    );
  }


  Widget buildDashboardUI(BuildContext context, List<UniversitiesModel>? data) {

    return Container(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: data?.length ?? 0,
            itemBuilder: (context, index){
            return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: SizeConstants.width / 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Domain", style: getTextMedium(size: SizeConstants.s16)),
                              Text(":   ", style: getTextMedium(size: SizeConstants.s16))
                            ],
                          ),
                        ),
                        Flexible(child: Text(data?[index].domains?[0] ?? "",  style: getTextMedium(size: SizeConstants.s16), overflow: TextOverflow.ellipsis,maxLines: 1,)),
                      ],
                    ),
                    SizedBox(height: SizeConstants.s1 * 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: SizeConstants.width / 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Alpha code", style: getTextMedium(size: SizeConstants.s16)),
                              Text(":   ", style: getTextMedium(size: SizeConstants.s16))
                            ],
                          ),
                        ),
                        Text(data?[index].alphaTwoCode ?? "",  style: getTextMedium(size: SizeConstants.s16),),
                      ],
                    ),
                    SizedBox(height: SizeConstants.s1 * 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: SizeConstants.width / 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("State Province", style: getTextMedium(size: SizeConstants.s16)),
                              Text(":   ", style: getTextMedium(size: SizeConstants.s16))
                            ],
                          ),
                        ),
                        Text(data?[index].stateprovince ?? "-",  style: getTextMedium(size: SizeConstants.s16),),
                      ],
                    ),
                    SizedBox(height: SizeConstants.s1 * 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: SizeConstants.width / 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("name", style: getTextMedium(size: SizeConstants.s16)),
                              Text(":   ", style: getTextMedium(size: SizeConstants.s16))
                            ],
                          ),
                        ),
                        Flexible(child: Text(data?[index].name ?? "",  style: getTextMedium(size: SizeConstants.s16), overflow: TextOverflow.ellipsis, maxLines: 1,)),
                      ],
                    ),
                    SizedBox(height: SizeConstants.s1 * 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: SizeConstants.width / 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("web_pages", style: getTextMedium(size: SizeConstants.s16)),
                              Text(":   ", style: getTextMedium(size: SizeConstants.s16))
                            ],
                          ),
                        ),
                        Flexible(child: Text(data?[index].webPages?[0] ?? "",  style: getTextMedium(size: SizeConstants.s16), overflow: TextOverflow.ellipsis, maxLines: 1,)),
                      ],
                    ),

                  ],
                ),
              ),
            );
            }
        ),
    );
  }
}
