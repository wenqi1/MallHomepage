import { Commodity } from '../model/CommodityModel'

export type TabBarData = {
  // 序号
  index: number,
  // 未被选择时图标
  img: Resource,
  // 被选择时图标
  selectImg: Resource,
  // 文字介绍
  title: Resource
}

/**
 * 主页底部导航栏数据
 */
export const tabBarData: TabBarData[] = [
  {
    index: 0,
    img: $r('app.media.main_page_tab_home'),
    selectImg: $r("app.media.main_page_tab_select_home"),
    title: $r('app.string.main_page_tab_home'),
  },
  {
    index: 1,
    img: $r("app.media.main_page_tab_product"),
    selectImg: $r("app.media.main_page_tab_select_product"),
    title: $r('app.string.main_page_tab_product'),
  },
  {
    index: 2,
    img: $r("app.media.main_page_tab_cart"),
    selectImg: $r("app.media.main_page_tab_select_cart"),
    title: $r('app.string.main_page_tab_cart'),
  },
  {
    index: 3,
    img: $r("app.media.main_page_tab_personal"),
    selectImg: $r("app.media.main_page_tab_select_personal"),
    title: $r('app.string.main_page_tab_personal'),
  }
]

/**
 * 搜索框内容
 */
export const searchSwiper: Resource[] = [
$r('app.string.main_page_search_content1'),
$r('app.string.main_page_search_content2'),
$r('app.string.main_page_search_content3')
]

/**
 * 分类栏内容
 */
export const classifyTitle: Resource[] = [
$r('app.string.main_page_classify_selected'),
$r('app.string.main_page_classify_year_gifts'),
$r('app.string.main_page_classify_computer'),
$r('app.string.main_page_classify_fresh'),
$r('app.string.main_page_classify_phone'),
$r('app.string.main_page_classify_food'),
$r('app.string.main_page_classify_drink'),
$r('app.string.main_page_classify_daily_use')
]

/**
 * 轮播图
 */
export const swiperImage: Resource[] = [
$r("app.media.main_page_swiper_img1"),
$r("app.media.main_page_swiper_img2"),
$r("app.media.main_page_swiper_img3"),
$r("app.media.main_page_swiper_img4")
]

/**
 * 商品数据
 */
const commodityData = [
  {
    "detail_pic_url": "commodity/product001.png",
    "attr_list": "[{\"name\":\"颜色\",\"value\":[\"深邃黑\",\"珠光白\",\"宝石蓝\"]},{\"name\":\"版本\",\"value\":" +
    "[\"8+128G\",\"8+256G\",\"12+512G\"]},{\"name\":\"网络制式\",\"value\":[\"4G全网通\",\"5G全网通\"]},{\"name\":\"类型\",\"value\":[\"官方标配\"]}]",
    "category_id": "1",
    "price": 6399,
    "name": "huawei mate40Pro",
    "pic_url": "commodity/product001.png",
    "spu_id": "1",
    "desc": "5G手机",
    "promotion": "新品"
  },
  {
    "detail_pic_url": "commodity/product002.png",
    "attr_list": "[{\"name\":\"颜色\",\"value\":[\"深邃黑\",\"珠光白\",\"宝石蓝\"]},{\"name\":\"版本\",\"value\":" +
    "[\"8+128G\",\"8+256G\",\"12+512G\"]},{\"name\":\"网络制式\",\"value\":[\"4G全网通\",\"5G全网通\"]},{\"name\":\"类型\",\"value\":[\"官方标配\"]}]",
    "category_id": "1",
    "price": 5199,
    "name": "huawei matebook13",
    "pic_url": "commodity/product002.png",
    "spu_id": "2",
    "desc": "11代酷睿",
    "promotion": "新品"
  },
  {
    "detail_pic_url": "commodity/product003.png",
    "attr_list": "[{\"name\":\"颜色\",\"value\":[\"黑色\",\"白色\"]},{\"name\":\"版本\",\"value\":" +
    "[\"8+128G\",\"8+256G\",\"12+512G\"]},{\"name\":\"网络制式\",\"value\":[\"4G全网通\",\"5G全网通\"]}," +
    "{\"name\":\"类型\",\"value\":[\"官方标配\"]}]",
    "category_id": "3",
    "price": 6588,
    "name": "huawei p40Pro",
    "pic_url": "commodity/product003.png",
    "spu_id": "3",
    "desc": "5G手机 支持HarmonyOS",
    "promotion": "限时"
  },
  {
    "detail_pic_url": "commodity/product004.png",
    "attr_list": "[{\"name\":\"颜色\",\"value\":[\"深邃黑\",\"珠光白\",\"宝石蓝\"]},{\"name\":\"版本\",\"value\":" +
    "[\"8+128G\",\"8+256G\",\"12+512G\"]},{\"name\":\"网络制式\",\"value\":[\"4G全网通\",\"5G全网通\"]}," +
    "{\"name\":\"类型\",\"value\":[\"官方标配\"]}]",
    "category_id": null,
    "price": 3999,
    "name": "huawei mate30Pro",
    "pic_url": "commodity/product004.png",
    "spu_id": "4",
    "desc": "超长续航 支持HarmonyOS系统",
    "promotion": "新品"
  },
  {
    "detail_pic_url": "commodity/product005.png",
    "attr_list": "[{\"name\":\"颜色\",\"value\":[\"黑色\",\"白色\"]},{\"name\":\"版本\",\"value\":" +
    "[\"8+128G\",\"8+256G\",\"12+512G\"]},{\"name\":\"网络制式\",\"value\":[\"4G全网通\",\"5G全网通\"]}," +
    "{\"name\":\"类型\",\"value\":[\"官方标配\"]}]",
    "category_id": null,
    "price": 1899,
    "name": "huawei nova20e",
    "pic_url": "commodity/product005.png",
    "spu_id": "5",
    "desc": "5000mAh大电池 6.3英寸高清大屏",
    "promotion": "赠送积分"
  },
  {
    "detail_pic_url": "commodity/product006.png",
    "attr_list": "[{\"name\":\"颜色\",\"value\":[\"深邃黑\",\"珠光白\",\"宝石蓝\"]},{\"name\":\"版本\",\"value\":" +
    "[\"8+128G\",\"8+256G\",\"12+512G\"]},{\"name\":\"网络制式\",\"value\":[\"4G全网通\",\"5G全网通\"]}," +
    "{\"name\":\"类型\",\"value\":[\"官方标配\"]}]",
    "category_id": null,
    "price": 2199,
    "name": "huawei nova20Plus",
    "pic_url": "commodity/product006.png",
    "spu_id": "6",
    "desc": "40W超级快充 90Hz高刷新率",
    "promotion": "新品"
  }
]

export const commodities: Commodity[] = commodityData.map(item => new Commodity({
  id: item.spu_id,
  title: item.name,
  description: item.desc,
  price: item.price,
  images: [item.pic_url],
  promotion: item.promotion,
  detail: [item.detail_pic_url],
  specifications: JSON.parse(item.attr_list as unknown as string).map((i) => ({
    id: i.name,
    title: i.name,
    data: i.value.map(j => ({ key: j, value: j, image: '' }))
  }))
}))

