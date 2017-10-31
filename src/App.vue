<template>
    <div>
        <p>As you can see below, the styles from the multiselect component are not being imported, even though they are clearly a part of the component in Multiselect.vue</p>

        <multi-select
          v-model="thing1"
          :options="things1"
        ></multi-select>

        <multi-select
            v-model="thing2"
            :options="things2"
        ></multi-select>

        A custom component containing styling:
        <my-component></my-component>
    </div>
</template>

<script>
    import Multiselect from 'vue-multiselect'
    import MyComponent from './my-component.vue'

    export default {
        components: {
            'multi-select': Multiselect,
            'my-component': MyComponent
        },
        data() {
            return {
                thing1: '',
                thing2: '',
                things1: ['thing1 A', 'thing1 B', 'thing1 C'],
                things2: ['thing2 A', 'thing2 B', 'thing2 C'],
            }
        }
    }
</script>
