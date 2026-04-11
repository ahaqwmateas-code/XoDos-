.class public Lcom/termux/widget/activities/TermuxWidgetMainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TermuxWidgetMainActivity.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "TermuxWidgetMainActivity"

.field public static final MAX_SHORTCUTS_LIMIT_DOCS_URL:Ljava/lang/String; = "https://github.com/termux/termux-widget#max-shortcuts-limit-optional"

.field public static final TERMUX_WIDGET_DATA_HOME_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux/files/home/.termux/widget"

.field public static final TERMUX_WIDGET_DYNAMIC_SHORTCUTS_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux/files/home/.termux/widget/dynamic_shortcuts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private createDynamicShortcuts(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 177
    const-string v0, "TermuxWidgetMainActivity"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/termux/widget/utils/ShortcutUtils;->getShortcutManager(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/pm/ShortcutManager;

    move-result-object v2

    .line 178
    .local v2, "shortcutManager":Landroid/content/pm/ShortcutManager;
    if-nez v2, :cond_0

    return-void

    .line 181
    :cond_0
    const-string v3, "/data/data/com.termux/files/home/.termux/widget/dynamic_shortcuts"

    invoke-static {v3}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;)Lcom/termux/shared/errors/Error;

    move-result-object v4

    .line 182
    .local v4, "error":Lcom/termux/shared/errors/Error;
    if-eqz v4, :cond_1

    .line 183
    invoke-virtual {v4}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v4}, Lcom/termux/shared/errors/Error;->getMinimalErrorLogString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 187
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v5, "shortcutFiles":Ljava/util/List;, "Ljava/util/List<Lcom/termux/widget/ShortcutFile;>;"
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/termux/widget/utils/ShortcutUtils;->enumerateShortcutFiles(Ljava/util/List;Ljava/io/File;Z)V

    .line 190
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 191
    sget v0, Lcom/termux/widget/R$string;->msg_no_shortcut_files_found_in_directory:I

    .line 192
    invoke-static {v3}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getUnExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v7

    .line 191
    invoke-virtual {p0, v0, v6}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 193
    return-void

    .line 196
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v3, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/termux/widget/ShortcutFile;

    .line 198
    .local v8, "shortcutFile":Lcom/termux/widget/ShortcutFile;
    invoke-virtual {v8, p1, v7}, Lcom/termux/widget/ShortcutFile;->getShortcutInfo(Landroid/content/Context;Z)Landroid/content/pm/ShortcutInfo;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v8    # "shortcutFile":Lcom/termux/widget/ShortcutFile;
    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result v6

    .line 203
    .local v6, "maxShortcuts":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " shortcuts and max shortcuts limit is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 205
    sget v8, Lcom/termux/widget/R$string;->msg_dynamic_shortcuts_limit_reached:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v9, v10, v7

    invoke-virtual {p0, v8, v10}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v0, v8}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 207
    sget v8, Lcom/termux/widget/R$string;->msg_skipping_shortcut:I

    .line 208
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 209
    const-string v11, "/data/data/com.termux/files/home/.termux/widget/dynamic_shortcuts/"

    invoke-static {v11}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 208
    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v9, v10, v7

    .line 207
    invoke-virtual {p0, v8, v10}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, "message":Ljava/lang/String;
    invoke-static {p1, v8, v7}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 211
    invoke-static {v0, v8}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 213
    .end local v8    # "message":Ljava/lang/String;
    goto :goto_1

    .line 216
    :cond_4
    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    .line 217
    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    .line 218
    sget v8, Lcom/termux/widget/R$string;->msg_created_dynamic_shortcuts_successfully:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v9, v1, v7

    invoke-virtual {p0, v8, v1}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/termux/shared/logger/Logger;->logDebugAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private removeDynamicShortcuts(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 223
    const/4 v0, 0x1

    const-string v1, "TermuxWidgetMainActivity"

    invoke-static {p1, v1, v0}, Lcom/termux/widget/utils/ShortcutUtils;->getShortcutManager(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    .line 224
    .local v0, "shortcutManager":Landroid/content/pm/ShortcutManager;
    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v2

    .line 227
    .local v2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 228
    sget v3, Lcom/termux/widget/R$string;->msg_no_dynamic_shortcuts_currently_created:I

    invoke-virtual {p0, v3}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/termux/shared/logger/Logger;->logDebugAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void

    .line 232
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    .line 233
    sget v3, Lcom/termux/widget/R$string;->msg_removed_dynamic_shortcuts_successfully:I

    invoke-virtual {p0, v3}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/termux/shared/logger/Logger;->logDebugAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private setChangeLauncherActivityStateViews()V
    .locals 14

    .line 99
    const-string v6, "com.termux.widget"

    .line 100
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "com.termux.widget.activities.TermuxWidgetActivity"

    .line 102
    .local v7, "className":Ljava/lang/String;
    sget v0, Lcom/termux/widget/R$id;->textview_change_launcher_activity_state_details:I

    invoke-virtual {p0, v0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 103
    .local v8, "changeLauncherActivityStateTextView":Landroid/widget/TextView;
    sget v0, Lcom/termux/widget/R$string;->msg_change_launcher_activity_state_info:I

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v4, 0x1

    aput-object v1, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {p0, v0}, Lcom/termux/shared/markdown/MarkdownUtils;->getSpannedMarkdownText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget v0, Lcom/termux/widget/R$id;->button_change_launcher_activity_state:I

    invoke-virtual {p0, v0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    .line 110
    .local v9, "changeLauncherActivityStateButton":Landroid/widget/Button;
    invoke-static {p0, v6, v7, v3}, Lcom/termux/shared/android/PackageUtils;->isComponentDisabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 112
    .local v10, "currentlyDisabled":Ljava/lang/Boolean;
    if-nez v10, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to check if \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" launcher activity is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxWidgetMainActivity"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v9, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 116
    sget v0, Lcom/termux/shared/R$string;->action_disable_launcher_icon:I

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(I)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void

    .line 121
    :cond_0
    invoke-virtual {v9, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 123
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Termux:Widget"

    if-eqz v0, :cond_1

    .line 124
    sget v0, Lcom/termux/shared/R$string;->action_enable_launcher_icon:I

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(I)V

    .line 125
    sget v0, Lcom/termux/shared/R$string;->msg_enabling_launcher_icon:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "stateChangeMessage":Ljava/lang/String;
    const/4 v1, 0x1

    move-object v11, v0

    move v12, v1

    .local v1, "newState":Z
    goto :goto_0

    .line 128
    .end local v0    # "stateChangeMessage":Ljava/lang/String;
    .end local v1    # "newState":Z
    :cond_1
    sget v0, Lcom/termux/shared/R$string;->action_disable_launcher_icon:I

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(I)V

    .line 129
    sget v0, Lcom/termux/shared/R$string;->msg_disabling_launcher_icon:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .restart local v0    # "stateChangeMessage":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v11, v0

    move v12, v1

    .line 133
    .end local v0    # "stateChangeMessage":Ljava/lang/String;
    .local v11, "stateChangeMessage":Ljava/lang/String;
    .local v12, "newState":Z
    :goto_0
    new-instance v13, Lcom/termux/widget/activities/TermuxWidgetMainActivity$$ExternalSyntheticLambda1;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v11

    move-object v3, v6

    move-object v4, v7

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/termux/widget/activities/TermuxWidgetMainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/termux/widget/activities/TermuxWidgetMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method private setDynamicShortcutsViews()V
    .locals 6

    .line 145
    sget v0, Lcom/termux/widget/R$id;->linearlayout_dynamic_shortcuts:I

    invoke-virtual {p0, v0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 147
    .local v0, "dynamicShortcutsLinearLayout":Landroid/widget/LinearLayout;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    sget v2, Lcom/termux/widget/R$id;->textview_dynamic_shortcuts_info:I

    invoke-virtual {p0, v2}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 151
    .local v2, "dynamicShortcutsInfoTextView":Landroid/widget/TextView;
    sget v3, Lcom/termux/widget/R$string;->msg_dynamic_shortcuts_info:I

    .line 153
    const-string v4, "/data/data/com.termux/files/home/.termux/widget/dynamic_shortcuts"

    invoke-static {v4}, Lcom/termux/shared/termux/file/TermuxFileUtils;->getUnExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    .line 152
    invoke-virtual {p0, v3, v5}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {p0, v1}, Lcom/termux/shared/markdown/MarkdownUtils;->getSpannedMarkdownText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    sget v1, Lcom/termux/widget/R$id;->button_create_dynamic_shortcuts:I

    invoke-virtual {p0, v1}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 156
    .local v1, "createDynamicShortcutsButton":Landroid/widget/Button;
    new-instance v3, Lcom/termux/widget/activities/TermuxWidgetMainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/termux/widget/activities/TermuxWidgetMainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    sget v3, Lcom/termux/widget/R$id;->button_remove_dynamic_shortcuts:I

    invoke-virtual {p0, v3}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 159
    .local v3, "removeDynamicShortcutsButton":Landroid/widget/Button;
    new-instance v4, Lcom/termux/widget/activities/TermuxWidgetMainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/termux/widget/activities/TermuxWidgetMainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .end local v1    # "createDynamicShortcutsButton":Landroid/widget/Button;
    .end local v2    # "dynamicShortcutsInfoTextView":Landroid/widget/TextView;
    .end local v3    # "removeDynamicShortcutsButton":Landroid/widget/Button;
    goto :goto_0

    .line 161
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    :goto_0
    return-void
.end method

.method private setMaxShortcutsLimitView()V
    .locals 8

    .line 85
    sget v0, Lcom/termux/widget/R$id;->linearlayout_max_shortcuts_limit_info:I

    invoke-virtual {p0, v0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    .local v0, "maxShortcutsInfoLinearLayout":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    .line 88
    const-string v1, "TermuxWidgetMainActivity"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/termux/widget/utils/ShortcutUtils;->getShortcutManager(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/pm/ShortcutManager;

    move-result-object v1

    .line 89
    .local v1, "shortcutManager":Landroid/content/pm/ShortcutManager;
    sget v3, Lcom/termux/widget/R$id;->textview_max_shortcuts_limit_info:I

    invoke-virtual {p0, v3}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 90
    .local v3, "maxShortcutsInfoTextView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 91
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    sget v5, Lcom/termux/widget/R$string;->msg_max_shortcuts_limit_info:I

    .line 93
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const-string v4, "https://github.com/termux/termux-widget#max-shortcuts-limit-optional"

    aput-object v4, v7, v2

    .line 92
    invoke-virtual {p0, v5, v7}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .end local v1    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    .end local v3    # "maxShortcutsInfoTextView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private setRefreshAllWidgetsViews()V
    .locals 2

    .line 166
    sget v0, Lcom/termux/widget/R$id;->button_refresh_all_widgets:I

    invoke-virtual {p0, v0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 167
    .local v0, "refreshAllWidgetsIconButton":Landroid/widget/Button;
    new-instance v1, Lcom/termux/widget/activities/TermuxWidgetMainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/termux/widget/activities/TermuxWidgetMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method


# virtual methods
.method synthetic lambda$setChangeLauncherActivityStateViews$0$com-termux-widget-activities-TermuxWidgetMainActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V
    .locals 7
    .param p1, "stateChangeMessage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "newState"    # Z
    .param p5, "v"    # Landroid/view/View;

    .line 134
    const-string v0, "TermuxWidgetMainActivity"

    invoke-static {v0, p1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/termux/shared/android/PackageUtils;->setComponentState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "errmsg":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->setChangeLauncherActivityStateViews()V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void
.end method

.method synthetic lambda$setDynamicShortcutsViews$1$com-termux-widget-activities-TermuxWidgetMainActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 156
    invoke-direct {p0, p0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->createDynamicShortcuts(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$setDynamicShortcutsViews$2$com-termux-widget-activities-TermuxWidgetMainActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 159
    invoke-direct {p0, p0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->removeDynamicShortcuts(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$setRefreshAllWidgetsViews$3$com-termux-widget-activities-TermuxWidgetMainActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 168
    invoke-virtual {p0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->sendIntentToRefreshAllWidgets()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v0, "TermuxWidgetMainActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget v0, Lcom/termux/widget/R$layout;->activity_termux_widget_main:I

    invoke-virtual {p0, v0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->setContentView(I)V

    .line 57
    invoke-static {}, Lcom/termux/shared/theme/NightMode;->getAppNightMode()Lcom/termux/shared/theme/NightMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setNightMode(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)V

    .line 59
    sget v0, Lcom/termux/shared/R$id;->toolbar:I

    invoke-static {p0, v0}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setToolbar(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 60
    sget v0, Lcom/termux/shared/R$id;->toolbar:I

    const-string v2, "Termux:Widget"

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setToolbarTitle(Landroidx/appcompat/app/AppCompatActivity;ILjava/lang/String;I)V

    .line 62
    sget v0, Lcom/termux/widget/R$id;->textview_plugin_info:I

    invoke-virtual {p0, v0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, "pluginInfo":Landroid/widget/TextView;
    sget v2, Lcom/termux/widget/R$string;->plugin_info:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "https://github.com/termux/termux-app"

    aput-object v5, v4, v3

    const-string v3, "https://github.com/termux/termux-widget"

    aput-object v3, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-direct {p0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->setDynamicShortcutsViews()V

    .line 67
    invoke-direct {p0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->setRefreshAllWidgetsViews()V

    .line 68
    invoke-virtual {p0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->sendIntentToRefreshAllWidgets()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/widget/TermuxWidgetApplication;->setLogConfig(Landroid/content/Context;Z)V

    .line 78
    const-string v0, "TermuxWidgetMainActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->setChangeLauncherActivityStateViews()V

    .line 81
    invoke-direct {p0}, Lcom/termux/widget/activities/TermuxWidgetMainActivity;->setMaxShortcutsLimitView()V

    .line 82
    return-void
.end method

.method public sendIntentToRefreshAllWidgets()V
    .locals 1

    .line 172
    const-string v0, "TermuxWidgetMainActivity"

    invoke-static {p0, v0}, Lcom/termux/widget/TermuxWidgetProvider;->sendIntentToRefreshAllWidgets(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    return-void
.end method
