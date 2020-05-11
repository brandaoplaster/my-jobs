<template>
  <div class="row">
    <div class="input-field col s12">
      <input type="text" class="autocomplete" @keypress="addTag" id="autocomplete-tags" />
      <label for="autocomplete-tags">Procure uma Tag</label>
    </div>
    <div class="col s12">
      <div class="chip" v-for="tag in portfolioTags" v-bind:key="tag">
        {{ tag.title }}
        <i class="close material-icons" @click="removeTag(tag)">close</i>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["portfolioId", "portfolioTags"],

  data() {
    return {
      currentTag: "",
      tags: []
    };
  },

  mounted() {
    this.$resource("/tags").get().then(response => {
          this.set_tags(response.body.tags);
        },
        response => { 
            M.toast({
                html: "Ocorreu um erro ao carregar as Tags do Portfólio",
                classes: "red"
            });
        }
    );
  },

  methods: {
    set_tags(tags) {
      let autocompleteTags = {};
      let elem = document.querySelectorAll("#autocomplete-tags");
      tags.forEach(tag => {
        autocompleteTags[tag.title] = null;
      });
      this.tags = tags;
      M.Autocomplete.init(elem, { data: autoCompleteTags });
    }
  }
};
</script>