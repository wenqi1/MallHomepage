import { MainPageConstants } from '../constants/MainPageConstants';
import { Commodity } from '../model/CommodityModel';
import { searchSwiper, classifyTitle, swiperImage, commodities } from '../viewmodel/MainPageData';
import CommodityShowList from './CommodityShowList';

/**
 * 首页
 */
@Component
export default struct Home {
  @State classifyIndex: number = 0;
  @State commodities: Commodity[] = commodities

  // 搜索栏
  @Builder SearchBar() {
    Row() {
      Image($r('app.media.main_page_search'))
        .height($r('app.float.main_page_search_image_size'))
        .width($r('app.float.main_page_search_image_size'))
        .margin({right: MainPageConstants.VP_12})
      
      Swiper() {
        ForEach(searchSwiper, item => {
          Column() {
            Text(item)
              .fontSize($r('app.float.main_page_tab_title_size'))
              .fontColor(Color.Black)
          }
          .alignItems(HorizontalAlign.Start)
        }, item => JSON.stringify(item))
      }
      .autoPlay(true)
      .loop(true)
      .vertical(true)
      .indicator(false)
    }
    .height(MainPageConstants.VP_40)
    .width(MainPageConstants.FULL_WIDTH)
    .borderRadius(MainPageConstants.VP_40)
    .backgroundColor(Color.White)
    .padding({left: MainPageConstants.VP_12, right: MainPageConstants.VP_12})
    .margin({top: MainPageConstants.VP_12, bottom: MainPageConstants.VP_12})
  }

  // 分类栏
  @Builder ClassifyTitle() {
    List({space: MainPageConstants.VP_12}) {
      ForEach(classifyTitle, (item: Resource, index: number) => {
        ListItem() {
          Text(item)
            .fontSize(MainPageConstants.FONT_SIZE_16)
            .opacity(this.classifyIndex === index ? MainPageConstants.FULL_OPACITY : MainPageConstants.EIGHTY_OPACITY)
            .fontWeight(this.classifyIndex === index ? MainPageConstants.FONT_WEIGHT_700 : MainPageConstants.FONT_WEIGHT_500)
            .fontColor(Color.White)
            .onClick(() => {
              this.classifyIndex = index;
            })
        }
      }, item => JSON.stringify(item))
    }
    .height(MainPageConstants.VP_40)
    .width(MainPageConstants.FULL_WIDTH)
    .listDirection(Axis.Horizontal)
  }

  // 轮播图
  @Builder SwiperImg() {
    Swiper() {
      ForEach(swiperImage, item => {
        Image(item)
          .width(MainPageConstants.FULL_WIDTH)
          .borderRadius(MainPageConstants.VP_20)
          .aspectRatio(MainPageConstants.ASPECT_RATIO)
          .backgroundColor(Color.White)
      }, item => JSON.stringify(item))
    }
    // 设置轮播图被选择的下标样式
    .indicatorStyle({ selectedColor: $r('app.color.main_page_tar_title_select_color') })
    // 轮播图自动播放
    .autoPlay(true)
  }

  build() {
    Stack({alignContent: Alignment.Top}) {
      Image($r('app.media.main_page_background'))
        .width(MainPageConstants.FULL_WIDTH)
        .height(MainPageConstants.VP_280)

     Flex({direction: FlexDirection.Column}) {
        Text($r('app.string.main_page_tab_home'))
          .fontWeight(MainPageConstants.FONT_WEIGHT_500)
          .fontColor(Color.Red)
          .fontSize(MainPageConstants.FONT_SIZE_22)
          .height(MainPageConstants.VP_30)
          .width(MainPageConstants.VP_80)
          .borderRadius(MainPageConstants.VP_30)
          .textAlign(TextAlign.Center)
          .margin({top: $r('app.float.main_page_title_margin_top')})
          .backgroundColor(Color.White)
          .alignSelf(ItemAlign.Center)

        this.SearchBar()

        Scroll() {
          Column() {
            this.ClassifyTitle()
            this.SwiperImg()
            CommodityShowList({commodities: $commodities})
          }
          .padding({left: MainPageConstants.VP_12, right: MainPageConstants.VP_12})
        }
        .scrollBar(BarState.Off)
      }
    }
    .height(MainPageConstants.FULL_HEIGHT)
  }
}