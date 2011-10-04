package com.leedostudios.metadata
{
    public function create(clazz:Class):*
    {
        return Creator.instance.create(clazz);
    }
}
