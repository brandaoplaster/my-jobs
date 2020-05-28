<template>
  <div class="row">
    <div class="col s12">
      <h5 class="custom-grey-text page-title">
        Cards do Portfólio
      </h5>
    </div>

    <div class="col l4 m4 s12">
      <div v-for="block in leftBlocks" :key="block.id" class="card-panel">
        <a class="fa fa-times grey-text right" @click="removeBlock(block)"></a>
        <component :is="block.kind" :portfolioId="portfolioId" :blockId="block.id"></component>
      </div>

      <div class="card-panel center">
        <img src="/assests/add_portfolio.png" id="add-left-block" @click="openModalToAdd('left')" />
      </div>
    </div>

    <div class="col l8 m8 s12">
      <div v-for="block in rightBlocks" :key="block.id" class="card-pane">
        <a class="fa fa-times grey-text right" @click="removeBlock(block)"></a>
        <component :is="block.kind" :portfolioId="portfolioId" :blockId="block.id"></component>
      </div>

      <div class="card-panel center">
        <img src="/assets/add_portfolio.png" id="add-right-block" @click="openModalToAdd('right')" />
      </div>
    </div>

    <div id="add-block-modal" class="modal">
      <div class="modal-content">
        <h4>
          Adicionar Novo bloco
        </h4>
        <div class="row">
          <div class="input-fiel col xl12 l12 m12 s12">
            <select v-model="blockToAdd.kind" class="browser-default" id="select-block-kind">
              <option value="">Escolha um tipo</option>
              <option v-for="(value, key) in blockKinds" :value="key" v-bind:key="key">{{ value }}</option>
            </select>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <a class="modal-close btn custom-grey">Cancelar</a>
        <a class="btn custom-gree" id="confirm-add-block" @click="addBlock(blockToAdd)">Adicionar</a>
      </div>
    </div>
    
  </div>
</template>

<script>
export default {
  
}
</script>