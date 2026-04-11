.class public Lcom/termux/widget/TermuxWidgetControlsProviderService;
.super Landroid/service/controls/ControlsProviderService;
.source "TermuxWidgetControlsProviderService.java"


# static fields
.field private static final STATELESS_TEMPLATE_ID:Ljava/lang/String; = "2"

.field private static final WIDGET_REQUEST_CODE:I = 0x8b9


# instance fields
.field private final mReplayProcessor:Lio/reactivex/processors/ReplayProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/service/controls/ControlsProviderService;-><init>()V

    .line 48
    invoke-static {}, Lio/reactivex/processors/ReplayProcessor;->create()Lio/reactivex/processors/ReplayProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/widget/TermuxWidgetControlsProviderService;->mReplayProcessor:Lio/reactivex/processors/ReplayProcessor;

    return-void
.end method

.method private addShortcutFile(Ljava/io/File;Ljava/util/List;I)V
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p3, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I)V"
        }
    .end annotation

    .line 249
    .local p2, "shortcutFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, 0x5

    if-le p3, v0, :cond_0

    .line 251
    return-void

    .line 253
    :cond_0
    sget-object v0, Lcom/termux/widget/utils/ShortcutUtils;->SHORTCUT_FILES_FILTER:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 255
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_1

    .line 256
    return-void

    .line 259
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 260
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, v3, p2, v4}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->addShortcutFile(Ljava/io/File;Ljava/util/List;I)V

    goto :goto_1

    .line 263
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_3
    return-void
.end method

.method private addShortcutFileExtrasToIntent(Ljava/io/File;Landroid/content/Intent;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 215
    invoke-virtual {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/termux/settings/preferences/TermuxWidgetAppSharedPreferences;->getGeneratedToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.termux.shortcut.token"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "com.termux.file"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 218
    .local v0, "scriptUri":Landroid/net/Uri;
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 219
    return-void
.end method

.method private createBroadcastIntentForShortcutFile(Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/termux/widget/TermuxWidgetControlExecutorReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->addShortcutFileExtrasToIntent(Ljava/io/File;Landroid/content/Intent;)V

    .line 224
    return-object v0
.end method

.method private createDefaultIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/termux/widget/R$drawable;->ic_launcher:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultSelectableWidgetControl(Ljava/io/File;)Landroid/service/controls/Control;
    .locals 3
    .param p1, "shortcutFile"    # Ljava/io/File;

    .line 123
    invoke-direct {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createNoopPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 125
    .local v0, "emptyPendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/service/controls/Control$StatelessBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/service/controls/Control$StatelessBuilder;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatelessBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;

    move-result-object v1

    .line 127
    invoke-direct {p0, p1}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createSubtitle(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatelessBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;

    move-result-object v1

    .line 128
    invoke-direct {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createDefaultIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatelessBuilder;->setCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/Control$StatelessBuilder;

    move-result-object v1

    .line 129
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatelessBuilder;->setDeviceType(I)Landroid/service/controls/Control$StatelessBuilder;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/service/controls/Control$StatelessBuilder;->build()Landroid/service/controls/Control;

    move-result-object v1

    .line 125
    return-object v1
.end method

.method private createDefaultStatelessTemplate()Landroid/service/controls/templates/ControlTemplate;
    .locals 2

    .line 188
    new-instance v0, Landroid/service/controls/templates/StatelessTemplate;

    const-string v1, "2"

    invoke-direct {v0, v1}, Landroid/service/controls/templates/StatelessTemplate;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createNoopPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v0, "emptyIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private createPendingIntentForShortcutFile(Ljava/io/File;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/termux/widget/TermuxLaunchShortcutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    invoke-direct {p0, p1, v0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->addShortcutFileExtrasToIntent(Ljava/io/File;Landroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8b9

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private createShortcutFilesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHORTCUT_SCRIPTS_DIR:Ljava/io/File;

    .line 234
    .local v0, "shortcutDir":Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v1, "shortcutFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->addShortcutFile(Ljava/io/File;Ljava/util/List;I)V

    .line 238
    new-instance v2, Lcom/termux/widget/TermuxWidgetControlsProviderService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/termux/widget/TermuxWidgetControlsProviderService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 239
    return-object v1
.end method

.method private createSubtitle(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "???"

    :goto_0
    return-object v0
.end method

.method private createWidgetControlForInvalidShortcutFile(Ljava/io/File;)Landroid/service/controls/Control;
    .locals 3
    .param p1, "shortcutFile"    # Ljava/io/File;

    .line 141
    invoke-direct {p0, p1}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createPendingIntentForShortcutFile(Ljava/io/File;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 143
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/service/controls/Control$StatefulBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/service/controls/Control$StatefulBuilder;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 144
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatefulBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;

    move-result-object v1

    .line 145
    invoke-direct {p0, p1}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createSubtitle(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatefulBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;

    move-result-object v1

    .line 146
    invoke-direct {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createDefaultIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatefulBuilder;->setCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/Control$StatefulBuilder;

    move-result-object v1

    .line 147
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatefulBuilder;->setDeviceType(I)Landroid/service/controls/Control$StatefulBuilder;

    move-result-object v1

    .line 148
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatefulBuilder;->setStatus(I)Landroid/service/controls/Control$StatefulBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroid/service/controls/Control$StatefulBuilder;->build()Landroid/service/controls/Control;

    move-result-object v1

    .line 143
    return-object v1
.end method

.method private createWidgetControlForValidShortcutFile(Ljava/io/File;)Landroid/service/controls/Control;
    .locals 3
    .param p1, "shortcutFile"    # Ljava/io/File;

    .line 158
    invoke-direct {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createNoopPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 160
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/service/controls/Control$StatefulBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/service/controls/Control$StatefulBuilder;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatefulBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;

    move-result-object v1

    .line 162
    invoke-direct {p0, p1}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createSubtitle(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatefulBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;

    move-result-object v1

    .line 163
    invoke-direct {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createDefaultIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatefulBuilder;->setCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/Control$StatefulBuilder;

    move-result-object v1

    .line 164
    invoke-direct {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createDefaultStatelessTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatefulBuilder;->setControlTemplate(Landroid/service/controls/templates/ControlTemplate;)Landroid/service/controls/Control$StatefulBuilder;

    move-result-object v1

    .line 165
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatefulBuilder;->setDeviceType(I)Landroid/service/controls/Control$StatefulBuilder;

    move-result-object v1

    .line 166
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/service/controls/Control$StatefulBuilder;->setStatus(I)Landroid/service/controls/Control$StatefulBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Landroid/service/controls/Control$StatefulBuilder;->build()Landroid/service/controls/Control;

    move-result-object v1

    .line 160
    return-object v1
.end method

.method static synthetic lambda$createShortcutFilesList$0(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p0, "lhs"    # Ljava/io/File;
    .param p1, "rhs"    # Ljava/io/File;

    .line 238
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/widget/NaturalOrderComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private performWidgetCommandAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0, v0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createBroadcastIntentForShortcutFile(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 113
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createPublisherFor(Ljava/util/List;)Ljava/util/concurrent/Flow$Publisher;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Flow$Publisher<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation

    .line 76
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    .local v1, "shortcutFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "shortcutFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    invoke-direct {p0, v2}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createWidgetControlForValidShortcutFile(Ljava/io/File;)Landroid/service/controls/Control;

    move-result-object v3

    .local v3, "control":Landroid/service/controls/Control;
    goto :goto_2

    .line 81
    .end local v3    # "control":Landroid/service/controls/Control;
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createWidgetControlForInvalidShortcutFile(Ljava/io/File;)Landroid/service/controls/Control;

    move-result-object v3

    .line 85
    .restart local v3    # "control":Landroid/service/controls/Control;
    :goto_2
    iget-object v4, p0, Lcom/termux/widget/TermuxWidgetControlsProviderService;->mReplayProcessor:Lio/reactivex/processors/ReplayProcessor;

    invoke-virtual {v4, v3}, Lio/reactivex/processors/ReplayProcessor;->onNext(Ljava/lang/Object;)V

    .line 86
    .end local v1    # "shortcutFilePath":Ljava/lang/String;
    .end local v2    # "shortcutFile":Ljava/io/File;
    .end local v3    # "control":Landroid/service/controls/Control;
    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/termux/widget/TermuxWidgetControlsProviderService;->mReplayProcessor:Lio/reactivex/processors/ReplayProcessor;

    invoke-static {v0}, Lorg/reactivestreams/FlowAdapters;->toFlowPublisher(Lorg/reactivestreams/Publisher;)Ljava/util/concurrent/Flow$Publisher;

    move-result-object v0

    return-object v0
.end method

.method public createPublisherForAllAvailable()Ljava/util/concurrent/Flow$Publisher;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Flow$Publisher<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createShortcutFilesList()Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, "shortcutFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "controlList":Ljava/util/List;, "Ljava/util/List<Landroid/service/controls/Control;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 61
    .local v3, "shortcutFile":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->createDefaultSelectableWidgetControl(Ljava/io/File;)Landroid/service/controls/Control;

    move-result-object v4

    .line 62
    .local v4, "control":Landroid/service/controls/Control;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v3    # "shortcutFile":Ljava/io/File;
    .end local v4    # "control":Landroid/service/controls/Control;
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v1}, Lio/reactivex/Flowable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Flowable;

    move-result-object v2

    invoke-static {v2}, Lorg/reactivestreams/FlowAdapters;->toFlowPublisher(Lorg/reactivestreams/Publisher;)Ljava/util/concurrent/Flow$Publisher;

    move-result-object v2

    return-object v2
.end method

.method public performControlAction(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Lj$/util/function/Consumer;)V
    .locals 1
    .param p1, "controlId"    # Ljava/lang/String;
    .param p2, "controlAction"    # Landroid/service/controls/actions/ControlAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/controls/actions/ControlAction;",
            "Lj$/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p3, "consumer":Lj$/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 102
    instance-of v0, p2, Landroid/service/controls/actions/CommandAction;

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->performWidgetCommandAction(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public synthetic performControlAction(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p3}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/widget/TermuxWidgetControlsProviderService;->performControlAction(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Lj$/util/function/Consumer;)V

    return-void
.end method
