<template>
  <div class="page-about">
    <div class="list">
      <div class="item">
        <div class="item-name flex flex-middle">
          <h4>PHP framework系列</h4>
        </div>
        <ul class="projects">
          <li class="project" v-for="(item, index) in php_framework" :key="index">
            <template v-if="item.private">
              <a class="flex flex-middle" :class="[item.private && 'private']" :href="item.url" target="_blank" rel="noopener noreferrer">
                <i class="iconfont icon-github"></i>
                <h4 v-text="item.name" :title="item.name"></h4>
              </a>
              <p>尚未開放，敬請期待</p>
            </template>
            <template v-else>
              <a class="flex flex-middle" :class="[item.private && 'private']" :href="item.url" target="_blank" rel="noopener noreferrer">
                <i class="iconfont icon-github"></i>
                <h4 v-text="item.name" :title="item.name"></h4>
                <div class="flex-item flex flex-end">
                  <img :src="`//img.shields.io/github/stars/ChenJiaH/${item.name}.svg?style=social`" alt="">
                  <img :src="`//img.shields.io/github/forks/ChenJiaH/${item.name}.svg?style=social`" alt="">
                </div>
              </a>
              <p v-text="item.desc"></p>
            </template>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  setup() {
    return {
      php_framework: [{
        logo: '',
        name: 'ppp-light',
        desc: 'A simple php framework like express style',
        url: 'https://github.com/POABOB/ppp-light',
      }],
    };
  },
};
</script>
<style lang="scss" scoped>
  .pc-mode {
    .page-about {
      .projects {
        .project {
          a { margin-left: -26px;}
        }
      }
    }
  }
  .page-about {
    .list {
      .item {
        &-name { position: relative; height: 32px;
          h4 { font-weight: bold; font-size: $sizeLarge; color: $mainStrong; line-height: 1.5;}
        }
      }
      .item + .item { padding-top: 16px;}
    }
    .projects { margin-top: 24px; margin-bottom: 16px; list-style: none;
      .project {
        a { position: relative; cursor: auto;
          h4 { font-size: $sizeMedium; color: $mainStrong; line-height: 1.5; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; transition: all $animateTime; cursor: pointer;
            &:hover,&:active { color: #1abc9c;}
          }
          i { color: $main; transition: color $animateTime; cursor: pointer; margin-right: 10px;
            &:hover,&:active { color: $mainStrong;}
          }
          img { cursor: pointer; margin-left: 8px;}
        }
        p { color: $main; font-size: $sizeNormal; line-height: 1.5; margin-top: 8px;}
        &.private { cursor: not-allowed; pointer-events: none; opacity: 0.5;}
      }
      .project + .project { margin-top: 24px;}
    }
  }
</style>
