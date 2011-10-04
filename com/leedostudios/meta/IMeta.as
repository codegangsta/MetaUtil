package com.leedostudios.meta
{
    /**
     * Class for creating other classes and executing metadata
     */
    public interface IMeta
    {
        /**
         * Preprocesses the class and returns the instance
         *
         * @param value the class to instantiate, parse,
         * and execute any metadata available in the class
         * @return the created class
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
