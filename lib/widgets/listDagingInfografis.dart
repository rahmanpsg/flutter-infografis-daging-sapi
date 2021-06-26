import 'package:flutter/material.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';

class ListDagingInfografis extends StatelessWidget {
  const ListDagingInfografis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.symmetric(vertical: 10),
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(
            vertical: 3,
            horizontal: 15,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
              onTap: () => print(index),
              borderRadius: BorderRadius.circular(20),
              splashColor: bgColor,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  backgroundImage:
                      AssetImage("assets/images/daging/cow_blade_roast.png"),
                ),
                title: Text('Arm Roast'),
                subtitle: Text(
                  'Counted among the toughest Primal Beef cuts, Arm Roast has been regarded as one of the leanest portions of Beef by the United States Department of Agriculture (USDA). In fact, this low-priced Beef cut is considered a healthy choice due to its minimal cholestrol content.',
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
