package com.leedostudios.metadata
{
    public function addProcessor(name:String,value:IMetaProcessor):void
    {
        return Creator.instance.addProcessor(name,value);
    }
}
