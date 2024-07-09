import Home from '../components/Home';
import { MainPageConstants } from '../constants/MainPageConstants';
import { TabBarData, tabBarData } from '../viewmodel/MainPageData';

@Entry
@Component
struct MainPage {
  @State currentIndex: number = 0;

  // 自定义底部导航图标
  @Builder TabBar(tabBarData: TabBarData) {
    Column({space: MainPageConstants.TAB_SPACE}) {
      Image(this.currentIndex === tabBarData.index ? tabBarData.selectImg : tabBarData.img)
        .height($r('app.float.main_page_tab_image_size'))
        .width($r('app.float.main_page_tab_image_size'))
      Text(tabBarData.title)
        .fontSize($r('app.float.main_page_tab_title_size'))
        .fontColor(this.currentIndex === tabBarData.index ? $r('app.color.main_page_tar_title_select_color') : Color.Black)
    }
  }

  build() {
    Tabs({
      index: this.currentIndex,
      barPosition: BarPosition.End
    }) {
      // 首页
      TabContent() {
        Home()
      }
      .tabBar(this.TabBar(tabBarData[0]))

      // 新品
      TabContent() {
        Column() {
          Text($r('app.string.main_page_tab_product'))
            .fontSize($r('app.float.product_page_text_size'))
        }
        .height(MainPageConstants.FULL_HEIGHT)
        .width(MainPageConstants.FULL_WIDTH)
        .justifyContent(FlexAlign.Center)
      }
      .tabBar(this.TabBar(tabBarData[1]))

      // 购物车
      TabContent() {
        Column() {
          Text($r('app.string.main_page_tab_cart'))
            .fontSize($r('app.float.product_page_text_size'))
        }
        .height(MainPageConstants.FULL_HEIGHT)
        .width(MainPageConstants.FULL_WIDTH)
        .justifyContent(FlexAlign.Center)
      }
      .tabBar(this.TabBar(tabBarData[2]))

      // 我的
      TabContent() {
        Column() {
          Text($r('app.string.main_page_tab_personal'))
            .fontSize($r('app.float.product_page_text_size'))
        }
        .height(MainPageConstants.FULL_HEIGHT)
        .width(MainPageConstants.FULL_WIDTH)
        .justifyContent(FlexAlign.Center)
      }
      .tabBar(this.TabBar(tabBarData[3]))
    }
    .backgroundColor($r('app.color.main_page_background_color'))
    .onChange((index: number) => {
      this.currentIndex = index;
    })
  }
}