.class public Lcom/termux/app/terminal/StartEntry$Entry;
.super Ljava/lang/Object;
.source "StartEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/StartEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private iconPath:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/termux/app/terminal/StartEntry$Entry;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/termux/app/terminal/StartEntry$Entry;->iconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/termux/app/terminal/StartEntry$Entry;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/termux/app/terminal/StartEntry$Entry;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFileName"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/termux/app/terminal/StartEntry$Entry;->fileName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setIconPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIconPath"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/termux/app/terminal/StartEntry$Entry;->iconPath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPath"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/termux/app/terminal/StartEntry$Entry;->path:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/termux/app/terminal/StartEntry$Entry;->type:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 61
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v0, "elementJSONObject":Lorg/json/JSONObject;
    const-string v1, "path"

    iget-object v2, p0, Lcom/termux/app/terminal/StartEntry$Entry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v1, "fileName"

    iget-object v2, p0, Lcom/termux/app/terminal/StartEntry$Entry;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v1, "iconPath"

    iget-object v2, p0, Lcom/termux/app/terminal/StartEntry$Entry;->iconPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-object v0

    .line 66
    .end local v0    # "elementJSONObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method
