package com.leedostudios.meta
{
    /**
     * Class for interpreting Metadata
     */
    public interface IMeta
    {
        /**
         * Preprocesses the class instance
         *
         * @param value the object to parse,
         * and execute any metadata available in the class
         * @return the processed object
         */
        function process(value:Object):*;

        /**
         * Add a IMetaProcessor to the end of the processor list
         * @param value
         */
        function addProcessor(name:String, value:IMetaProcessor):void;

        /**
         * Adds a processor to the specified index
         *
         * @param value
         * @param index
         */
        function addProcessorAt(name:String, value:IMetaProcessor,index:int):void;

        /**
         * Gets a processor at the specified index
         *
         * @param index
         * @return
         */
        function getProcessorAt(index:int):IMetaProcessor;

        /**
         * Removes a processor at the specified index
         * 
         * @param index
         * @return
         */
        function removeProcessorAt(index:int):IMetaProcessor;
    }
}
