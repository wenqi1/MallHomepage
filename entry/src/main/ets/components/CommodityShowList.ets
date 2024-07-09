import { MainPageConstants } from '../constants/MainPageConstants';
import { Commodity } from '../model/CommodityModel';

/**
 * 商品展示
 */
@Component
export default struct CommodityShowList {
  @Link commodities: Commodity[];

  @Builder CommodityShow(commodity: Commodity) {
    Column() {
      Image($rawfile(commodity.images[0]))
        .height(MainPageConstants.VP_120)
        .width(MainPageConstants.VP_120)
        .margin({top: MainPageConstants.VP_12, bottom: MainPageConstants.VP_12})

      Column() {
        Text(commodity.promotion)
          .fontColor(Color.White)
          .backgroundColor($r('app.color.main_page_tar_title_select_color'))
          .padding({right: MainPageConstants.VP_5, left: MainPageConstants.VP_5})
          .borderRadius(MainPageConstants.VP_5)

        Text($r('app.string.main_page_commodity_title', commodity.title, commodity.description))
           // 最多一行文本
          .maxLines(1)
            // 超出的部分用...代替
          .textOverflow({overflow: TextOverflow.Ellipsis})

        Text($r('app.string.main_page_commodity_price', commodity.price))
          .fontColor($r('app.color.main_page_tar_title_select_color'))
          .margin({top: MainPageConstants.VP_12, bottom: MainPageConstants.VP_12})
      }
      .alignItems(HorizontalAlign.Start)
    }
    .backgroundColor(Color.White)
    .borderRadius(MainPageConstants.VP_12)
  }

  build() {
    List({space: MainPageConstants.VP_12}) {
      ForEach(this.commodities, item => {
        ListItem() {
          this.CommodityShow(item)
        }
        .padding({right: MainPageConstants.VP_12})
      }, item => JSON.stringify(item))
    }
    // 设置列表为2列
    .lanes(2)
  }
}