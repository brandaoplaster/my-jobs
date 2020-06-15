<template>
  <div class="bloco-informacao-adicionais">
    <h4 class="block-title grey">Informações Adicionais</h4>
    <div class="input-field col l12 m12 s12">
      <input
        placeholder="Título"
        id="additional-information-title"
        v-model="additional_information.title"
        @change="submit()"
        class="font_20 custom-grey-text text-darken-1"
      />
      <label class="active font_20 custom-grey-text text-darken-1">Título</label>
    </div>

    <div class="row">
      <div class="input-field col l12 m12 s12">
        <vue-ckeditor
          v-model="additional_information.description"
          :config="config"
          @blur="submit()"
        />
      </div>
    </div>
  </div>
</template>