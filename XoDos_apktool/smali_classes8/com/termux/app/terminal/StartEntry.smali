.class public Lcom/termux/app/terminal/StartEntry;
.super Ljava/lang/Object;
.source "StartEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/terminal/StartEntry$Entry;
    }
.end annotation


# static fields
.field private static mCurrentStartItemIdx:I

.field private static final mStartEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/termux/app/terminal/StartEntry$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private static final mStartSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/termux/app/terminal/StartEntry;->mStartEntryList:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/termux/app/terminal/StartEntry;->mStartSet:Ljava/util/HashSet;

    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/termux/app/terminal/StartEntry;->mCurrentStartItemIdx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addStartEntry(Lcom/termux/app/terminal/StartEntry$Entry;)Z
    .locals 2
    .param p0, "item"    # Lcom/termux/app/terminal/StartEntry$Entry;

    .line 143
    invoke-virtual {p0}, Lcom/termux/app/terminal/StartEntry$Entry;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/termux/app/terminal/StartEntry;->mStartSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    sget-object v1, Lcom/termux/app/terminal/StartEntry;->mStartSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v1, Lcom/termux/app/terminal/StartEntry;->mStartEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v1, 0x1

    return v1

    .line 149
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static deleteStartEntry(Lcom/termux/app/terminal/StartEntry$Entry;)V
    .locals 2
    .param p0, "currentCommand"    # Lcom/termux/app/terminal/StartEntry$Entry;

    .line 153
    sget-object v0, Lcom/termux/app/terminal/StartEntry;->mStartSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/termux/app/terminal/StartEntry$Entry;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/termux/app/terminal/StartEntry;->mStartEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/termux/app/terminal/StartEntry;->mStartSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/termux/app/terminal/StartEntry$Entry;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-void
.end method

.method public static getCurrentStartItemIdx()I
    .locals 1

    .line 81
    sget v0, Lcom/termux/app/terminal/StartEntry;->mCurrentStartItemIdx:I

    return v0
.end method

.method public static getStartItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/termux/app/terminal/StartEntry$Entry;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/termux/app/terminal/StartEntry;->mStartEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static loadStartItems()V
    .locals 12

    .line 111
    const-string v0, "currentStartItem"

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/home"

    const-string v3, ".startItemEntries"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 117
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/termux/x11/controller/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "startItemEntriesJSONObject":Lorg/json/JSONObject;
    const-string v3, "elements"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 119
    .local v3, "startItemsJSONArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 120
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 121
    .local v5, "controllerJSONObject":Lorg/json/JSONObject;
    const-string v6, "path"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "path":Ljava/lang/String;
    const-string v7, "fileName"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, "fileName":Ljava/lang/String;
    const-string v8, "iconPath"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "iconPath":Ljava/lang/String;
    new-instance v9, Lcom/termux/app/terminal/StartEntry$Entry;

    invoke-direct {v9}, Lcom/termux/app/terminal/StartEntry$Entry;-><init>()V

    .line 125
    .local v9, "entry":Lcom/termux/app/terminal/StartEntry$Entry;
    invoke-virtual {v9, v6}, Lcom/termux/app/terminal/StartEntry$Entry;->setPath(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v9, v7}, Lcom/termux/app/terminal/StartEntry$Entry;->setFileName(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v9, v8}, Lcom/termux/app/terminal/StartEntry$Entry;->setIconPath(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v9}, Lcom/termux/app/terminal/StartEntry$Entry;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 129
    .local v10, "key":Ljava/lang/String;
    sget-object v11, Lcom/termux/app/terminal/StartEntry;->mStartSet:Ljava/util/HashSet;

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 130
    sget-object v11, Lcom/termux/app/terminal/StartEntry;->mStartSet:Ljava/util/HashSet;

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v11, Lcom/termux/app/terminal/StartEntry;->mStartEntryList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v5    # "controllerJSONObject":Lorg/json/JSONObject;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "iconPath":Ljava/lang/String;
    .end local v9    # "entry":Lcom/termux/app/terminal/StartEntry$Entry;
    .end local v10    # "key":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/termux/app/terminal/StartEntry;->mCurrentStartItemIdx:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v2    # "startItemEntriesJSONObject":Lorg/json/JSONObject;
    .end local v3    # "startItemsJSONArray":Lorg/json/JSONArray;
    :cond_3
    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 113
    :cond_4
    :goto_2
    return-void
.end method

.method public static saveStartItems()V
    .locals 7

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home"

    const-string v2, ".startItemEntries"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v1, "data":Lorg/json/JSONObject;
    const-string v2, "version"

    const-string v3, "1.0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v2, "name"

    const-string v3, "startItemEntries"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v2, "currentStartItem"

    sget v3, Lcom/termux/app/terminal/StartEntry;->mCurrentStartItemIdx:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 97
    .local v2, "elementsJSONArray":Lorg/json/JSONArray;
    sget-object v3, Lcom/termux/app/terminal/StartEntry;->mStartEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/app/terminal/StartEntry$Entry;

    .line 98
    .local v4, "itm":Lcom/termux/app/terminal/StartEntry$Entry;
    invoke-virtual {v4}, Lcom/termux/app/terminal/StartEntry$Entry;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 99
    sget-object v5, Lcom/termux/app/terminal/StartEntry;->mStartSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/termux/app/terminal/StartEntry$Entry;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    sget-object v5, Lcom/termux/app/terminal/StartEntry;->mStartSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/termux/app/terminal/StartEntry$Entry;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v4    # "itm":Lcom/termux/app/terminal/StartEntry$Entry;
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    const-string v3, "elements"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/termux/x11/controller/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "elementsJSONArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 108
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public static setCurrentStartItemIdx(I)V
    .locals 0
    .param p0, "startItemIdx"    # I

    .line 85
    sput p0, Lcom/termux/app/terminal/StartEntry;->mCurrentStartItemIdx:I

    .line 86
    return-void
.end method
