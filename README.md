### 说明

这个仓库里放入各种个人偏好配置文件，比如ide，编辑器，vi等主题或者是设置.



#### typora 主题配置

han.css 一个汉文主题配置，我觉得很舒服，改了些配置：

```css
/* 代码片断 */
pre, code, pre tt {
  font-family: Courier, 'Courier New', monospace;
  background-color: #f8f8f8;
}
#write .md-fences {
  border: 1px solid #ddd;
  padding: 1em 0.5em;
  display: block;
  background: #f8f8f8;
  -webkit-overflow-scrolling: touch;
}
```

286行，配置里加入了background-color, 这里指的是两个反引号中间的代码块颜色，原来是白色的。

293行， 代码块的背景颜色，原来是白色的。



#### vim_settings

my personal vim settings

set nu 默认设置行号

headerPython函数，如果新建.py文件，在开头加上信息

vundle 设置

nerdtree 设置

pytthon-model 现在默认让我关掉了
