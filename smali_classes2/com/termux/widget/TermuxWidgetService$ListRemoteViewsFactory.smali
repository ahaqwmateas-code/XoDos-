.class public Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;
.super Ljava/lang/Object;
.source "TermuxWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/widget/TermuxWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListRemoteViewsFactory"
.end annotation


# instance fields
.field private final mAppWidgetId:I

.field private final mContext:Landroid/content/Context;

.field private final shortcutFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/widget/ShortcutFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;->shortcutFiles:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 38
    iput p2, p0, Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;->mAppWidgetId:I

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;->shortcutFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "position"    # I

    .line 60
    iget-object v0, p0, Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;->shortcutFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/widget/ShortcutFile;

    iget-object v1, p0, Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/termux/widget/ShortcutFile;->getListWidgetView(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxWidgetService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onDataSetChanged()V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataSetChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxWidgetService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;->shortcutFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    sget-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHORTCUT_SCRIPTS_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 99
    iget-object v0, p0, Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;->shortcutFiles:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/termux/widget/utils/ShortcutUtils;->enumerateShortcutFiles(Ljava/util/List;Z)V

    .line 100
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxWidgetService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/termux/widget/TermuxWidgetService$ListRemoteViewsFactory;->shortcutFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    return-void
.end method
