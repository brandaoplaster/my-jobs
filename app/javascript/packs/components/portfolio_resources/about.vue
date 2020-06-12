<template>
  <div class="bloco-sobre-mim">
    <h4 class="block-title grey">Sobre Mim</h4>
    <div class="row">
      <div class="input-field col l12 m12 s12">
        <vue-ckeditor
          v-model="about.description"
          :config="config"
          @blur="submit()"
          id="about_description"
        />
      </div>
    </div>
  </div>
</template>