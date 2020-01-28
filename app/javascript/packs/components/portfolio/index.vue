<template>

</template>

<script>

    const url = new URL(document.location);

    export default {
        name: "index",
        comments: {},

        data() {
            return {
                portfolio: {}
            }
        },

        created() {
            this.portfolio.id = $("#portfolio-edit").data("portfolio");
            this.$resource('portfolios{/id}').get({ id: this.portfolio.id }).then(response => {
                    this.portfolio = response.body.portfolio
                },
                response => {
                    M.toast({
                        html: "Ocorreu um erro ao tentar carregar o Portfólio", classes: "red"
                    })
                })
        },
        computed: {
            public_url: function () {
                let url_port = (url.port == "" ? "" : `:${url.port}`);
                return `${url.protocol}//${url.hostname}${url_port}/${this.portfolio.slug}`
            }

        },
        methods: {
            update() {
                this.$resource('/portdolios{/id}').update({ id: this.portfolio.id }, { portfolio: this.portfolio })
                    .then({}, response => {
                        this.portfolio = response.body.portfolio;
                        response.body.errots.forEach(error => {
                            M.toast({  html: error, classes: "red" })
                        })
                    })
            },

            copyToClipboard() {
                let url_element = document.createElement('textarea');
                url_element.value = this.public_url;
                document.body.appendChild(url_element);
                url_element.select();
                document.execCommand("copy");
                document.body.removeChild(url_element);
            }

        }
    }
</script>

<style scoped>

</style>