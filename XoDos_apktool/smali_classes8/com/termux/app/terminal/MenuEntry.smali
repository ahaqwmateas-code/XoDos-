.class public Lcom/termux/app/terminal/MenuEntry;
.super Ljava/lang/Object;
.source "MenuEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/terminal/MenuEntry$Entry;
    }
.end annotation


# static fields
.field private static final mMenuEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/termux/app/terminal/MenuEntry$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/termux/app/terminal/MenuEntry;->mMenuEntryList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMenuEntry(Lcom/termux/app/terminal/MenuEntry$Entry;)V
    .locals 1
    .param p0, "item"    # Lcom/termux/app/terminal/MenuEntry$Entry;

    .line 116
    sget-object v0, Lcom/termux/app/terminal/MenuEntry;->mMenuEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public static deleteMenuEntry(Lcom/termux/app/terminal/MenuEntry$Entry;)V
    .locals 1
    .param p0, "currentCommand"    # Lcom/termux/app/terminal/MenuEntry$Entry;

    .line 120
    sget-object v0, Lcom/termux/app/terminal/MenuEntry;->mMenuEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public static getStartItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/termux/app/terminal/MenuEntry$Entry;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/termux/app/terminal/MenuEntry;->mMenuEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static loadMenuItems()V
    .locals 13

    .line 84
    sget-object v0, Lcom/termux/app/terminal/MenuEntry;->mMenuEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home"

    const-string v2, ".startMenuEntries"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 91
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/termux/x11/controller/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "startItemEntriesJSONObject":Lorg/json/JSONObject;
    const-string v2, "elements"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 93
    .local v2, "startItemsJSONArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 94
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 95
    .local v4, "controllerJSONObject":Lorg/json/JSONObject;
    const-string v5, "path"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "path":Ljava/lang/String;
    const-string v6, "fileName"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "fileName":Ljava/lang/String;
    const-string v7, "iconPath"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "iconPath":Ljava/lang/String;
    const-string v8, "command"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "cmd":Ljava/lang/String;
    const-string v9, "type"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, "type":Ljava/lang/String;
    const-string v10, "title"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "title":Ljava/lang/String;
    new-instance v11, Lcom/termux/app/terminal/MenuEntry$Entry;

    invoke-direct {v11}, Lcom/termux/app/terminal/MenuEntry$Entry;-><init>()V

    .line 102
    .local v11, "entry":Lcom/termux/app/terminal/MenuEntry$Entry;
    invoke-virtual {v11, v5}, Lcom/termux/app/terminal/MenuEntry$Entry;->setPath(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v11, v6}, Lcom/termux/app/terminal/MenuEntry$Entry;->setFileName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v11, v7}, Lcom/termux/app/terminal/MenuEntry$Entry;->setIconPath(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v11, v8}, Lcom/termux/app/terminal/MenuEntry$Entry;->setCommand(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v11, v9}, Lcom/termux/app/terminal/MenuEntry$Entry;->setType(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v11, v10}, Lcom/termux/app/terminal/MenuEntry$Entry;->setTitlle(Ljava/lang/String;)V

    .line 108
    sget-object v12, Lcom/termux/app/terminal/MenuEntry;->mMenuEntryList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .end local v4    # "controllerJSONObject":Lorg/json/JSONObject;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "iconPath":Ljava/lang/String;
    .end local v8    # "cmd":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "entry":Lcom/termux/app/terminal/MenuEntry$Entry;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "startItemEntriesJSONObject":Lorg/json/JSONObject;
    .end local v2    # "startItemsJSONArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 113
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 87
    :cond_2
    :goto_2
    return-void
.end method

.method public static saveMenuItems()V
    .locals 6

    .line 66
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home"

    const-string v2, ".startMenuEntries"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v1, "data":Lorg/json/JSONObject;
    const-string v2, "version"

    const-string v3, "1.0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v2, "name"

    const-string v3, "startMenuEntries"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 73
    .local v2, "elementsJSONArray":Lorg/json/JSONArray;
    sget-object v3, Lcom/termux/app/terminal/MenuEntry;->mMenuEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/app/terminal/MenuEntry$Entry;

    .line 74
    .local v4, "itm":Lcom/termux/app/terminal/MenuEntry$Entry;
    invoke-virtual {v4}, Lcom/termux/app/terminal/MenuEntry$Entry;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 75
    nop

    .end local v4    # "itm":Lcom/termux/app/terminal/MenuEntry$Entry;
    goto :goto_0

    .line 76
    :cond_0
    const-string v3, "elements"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/termux/x11/controller/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "elementsJSONArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 81
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
