.class public Lcom/termux/x11/controller/container/Shortcut;
.super Ljava/lang/Object;
.source "Shortcut.java"


# instance fields
.field public final container:Lcom/termux/x11/controller/container/Container;

.field private final extraData:Lorg/json/JSONObject;

.field public final file:Ljava/io/File;

.field public final icon:Landroid/graphics/Bitmap;

.field public final iconFile:Ljava/io/File;

.field public final name:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final wmClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/termux/x11/controller/container/Container;Ljava/io/File;)V
    .locals 18
    .param p1, "container"    # Lcom/termux/x11/controller/container/Container;
    .param p2, "file"    # Ljava/io/File;

    .line 25
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lcom/termux/x11/controller/container/Shortcut;->extraData:Lorg/json/JSONObject;

    .line 26
    iput-object v2, v1, Lcom/termux/x11/controller/container/Shortcut;->container:Lcom/termux/x11/controller/container/Container;

    .line 27
    move-object/from16 v3, p2

    iput-object v3, v1, Lcom/termux/x11/controller/container/Shortcut;->file:Ljava/io/File;

    .line 29
    const-string v0, ""

    .line 30
    .local v0, "execArgs":Ljava/lang/String;
    const/4 v4, 0x0

    .line 31
    .local v4, "icon":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 32
    .local v5, "iconFile":Ljava/io/File;
    const-string v6, ""

    .line 34
    .local v6, "wmClass":Ljava/lang/String;
    const/16 v7, 0x40

    invoke-virtual {v2, v7}, Lcom/termux/x11/controller/container/Container;->getIconsDir(I)Ljava/io/File;

    move-result-object v7

    const/16 v8, 0x30

    invoke-virtual {v2, v8}, Lcom/termux/x11/controller/container/Container;->getIconsDir(I)Ljava/io/File;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v2, v9}, Lcom/termux/x11/controller/container/Container;->getIconsDir(I)Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/io/File;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v8, v10, v7

    const/4 v7, 0x2

    aput-object v9, v10, v7

    move-object v7, v10

    .line 35
    .local v7, "iconDirs":[Ljava/io/File;
    const-string v8, ""

    .line 38
    .local v8, "section":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/termux/x11/controller/core/FileUtils;->readLines(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v8

    move-object v8, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    .end local v0    # "execArgs":Ljava/lang/String;
    .local v4, "execArgs":Ljava/lang/String;
    .local v5, "icon":Landroid/graphics/Bitmap;
    .local v6, "iconFile":Ljava/io/File;
    .local v8, "wmClass":Ljava/lang/String;
    .local v10, "section":Ljava/lang/String;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 39
    .local v12, "line":Ljava/lang/String;
    const-string v0, "["

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "index":I
    const/4 v13, -0x1

    if-eq v0, v13, :cond_0

    .line 41
    add-int/lit8 v13, v0, 0x1

    const-string v14, "]"

    invoke-virtual {v12, v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    .line 44
    :cond_0
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 45
    .end local v0    # "index":I
    .local v14, "index":I
    if-ne v14, v13, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v12, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 47
    .local v13, "key":Ljava/lang/String;
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 49
    .local v15, "value":Ljava/lang/String;
    const-string v0, "Desktop Entry"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50
    const-string v0, "Exec"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v4, v15

    .line 51
    :cond_2
    const-string v0, "Icon"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    array-length v0, v7

    :goto_1
    if-ge v11, v0, :cond_4

    move/from16 v16, v0

    aget-object v0, v7, v11

    .line 53
    .local v0, "iconDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v17, v4

    .end local v4    # "execArgs":Ljava/lang/String;
    .local v17, "execArgs":Ljava/lang/String;
    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v2

    .line 54
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 56
    goto :goto_2

    .line 52
    .end local v0    # "iconDir":Ljava/io/File;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v0, v16

    move-object/from16 v4, v17

    goto :goto_1

    .end local v17    # "execArgs":Ljava/lang/String;
    .restart local v4    # "execArgs":Ljava/lang/String;
    :cond_4
    move-object/from16 v17, v4

    .end local v4    # "execArgs":Ljava/lang/String;
    .restart local v17    # "execArgs":Ljava/lang/String;
    goto :goto_2

    .line 51
    .end local v17    # "execArgs":Ljava/lang/String;
    .restart local v4    # "execArgs":Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v4

    .line 60
    .end local v4    # "execArgs":Ljava/lang/String;
    .restart local v17    # "execArgs":Ljava/lang/String;
    :goto_2
    const-string v0, "StartupWMClass"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v15

    move-object v8, v0

    move v0, v14

    move-object/from16 v4, v17

    .end local v8    # "wmClass":Ljava/lang/String;
    .local v0, "wmClass":Ljava/lang/String;
    goto :goto_4

    .end local v0    # "wmClass":Ljava/lang/String;
    .restart local v8    # "wmClass":Ljava/lang/String;
    :cond_6
    move v0, v14

    move-object/from16 v4, v17

    goto :goto_4

    .line 62
    .end local v17    # "execArgs":Ljava/lang/String;
    .restart local v4    # "execArgs":Ljava/lang/String;
    :cond_7
    const-string v0, "Extra Data"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 64
    :try_start_0
    iget-object v0, v1, Lcom/termux/x11/controller/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 66
    :catch_0
    move-exception v0

    :goto_3
    nop

    .line 69
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :cond_8
    move v0, v14

    .end local v14    # "index":I
    .local v0, "index":I
    :goto_4
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 71
    .end local v0    # "index":I
    :cond_9
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/x11/controller/core/FileUtils;->getBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/termux/x11/controller/container/Shortcut;->name:Ljava/lang/String;

    .line 72
    iput-object v5, v1, Lcom/termux/x11/controller/container/Shortcut;->icon:Landroid/graphics/Bitmap;

    .line 73
    iput-object v6, v1, Lcom/termux/x11/controller/container/Shortcut;->iconFile:Ljava/io/File;

    .line 74
    const-string v0, "wine "

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/x11/controller/core/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/termux/x11/controller/container/Shortcut;->path:Ljava/lang/String;

    .line 75
    iput-object v8, v1, Lcom/termux/x11/controller/container/Shortcut;->wmClass:Ljava/lang/String;

    .line 77
    iget-object v0, v1, Lcom/termux/x11/controller/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/termux/x11/controller/container/Container;->checkObsoleteOrMissingProperties(Lorg/json/JSONObject;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 81
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/controller/container/Shortcut;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/termux/x11/controller/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    return-object p2
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 95
    if-eqz p2, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/termux/x11/controller/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 101
    return-void
.end method

.method public saveData()V
    .locals 6

    .line 104
    const-string v0, "[Desktop Entry]\n"

    .line 105
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/termux/x11/controller/container/Shortcut;->file:Ljava/io/File;

    invoke-static {v1}, Lcom/termux/x11/controller/core/FileUtils;->readLines(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, "line":Ljava/lang/String;
    const-string v4, "[Extra Data]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    const-string v4, "[Desktop Entry]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 110
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/termux/x11/controller/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n[Extra Data]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/termux/x11/controller/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/x11/controller/container/Shortcut;->extraData:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_3

    .line 118
    :catch_0
    move-exception v4

    :goto_3
    nop

    .line 119
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_2

    .line 122
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    iget-object v1, p0, Lcom/termux/x11/controller/container/Shortcut;->file:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/termux/x11/controller/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z

    .line 123
    return-void
.end method
