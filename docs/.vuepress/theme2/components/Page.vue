<template>
    <main class="page">
        <slot name="top" />

        <Content class="theme-default-content" />
        <PageEdit />

        <PageNav v-bind="{ sidebarItems }" />

        <slot name="bottom" />
    </main>
</template>

<script>
import PageEdit from "@theme/components/PageEdit.vue";
import PageNav from "@theme/components/PageNav.vue";

export default {
    components: { PageEdit, PageNav },
    props: ["sidebarItems"],
    mounted() {
        // import("mermaid/dist/mermaid").then((m) => {
        //     m.initialize({
        //         startOnLoad: true,
        //     });
        //     m.init();
        // });
    },
    updated() {
        // import("mermaid/dist/mermaid").then((m) => {
        //     m.initialize({
        //         startOnLoad: true,
        //     });
        //     m.init();
        // });
    },
};
</script>

<style lang="stylus">
@require '../styles/wrapper.styl'

.page
  padding-bottom 2rem
  display block
</style>
