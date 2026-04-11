.class public Lcom/termux/app/terminal/MenuEntry$Entry;
.super Lcom/termux/app/terminal/StartEntry$Entry;
.source "MenuEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/MenuEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private command:Ljava/lang/String;

.field private titlle:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/termux/app/terminal/StartEntry$Entry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntry$Entry;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getTitlle()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntry$Entry;->titlle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/termux/app/terminal/MenuEntry$Entry;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/termux/app/terminal/MenuEntry$Entry;->command:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTitlle(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/termux/app/terminal/MenuEntry$Entry;->titlle:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/termux/app/terminal/MenuEntry$Entry;->type:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 46
    invoke-super {p0}, Lcom/termux/app/terminal/StartEntry$Entry;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 48
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "command"

    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntry$Entry;->command:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "type"

    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntry$Entry;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v1, "title"

    iget-object v2, p0, Lcom/termux/app/terminal/MenuEntry$Entry;->titlle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object v0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
