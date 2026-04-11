.class public Lcom/termux/am/IntentCmd;
.super Ljava/lang/Object;
.source "IntentCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/am/IntentCmd$CommandOptionHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCommandArgs(Lcom/termux/am/ShellCommand;Lcom/termux/am/IntentCmd$CommandOptionHandler;)Landroid/content/Intent;
    .locals 16
    .param p0, "cmd"    # Lcom/termux/am/ShellCommand;
    .param p1, "optionHandler"    # Lcom/termux/am/IntentCmd$CommandOptionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 25
    move-object/from16 v1, p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    move-object v2, v0

    .line 27
    .local v2, "baseIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 29
    .local v3, "hasIntentInfo":Z
    const/4 v4, 0x0

    .line 30
    .local v4, "data":Landroid/net/Uri;
    const/4 v5, 0x0

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v0

    .line 33
    .end local v0    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "hasIntentInfo":Z
    .local v5, "data":Landroid/net/Uri;
    .local v6, "type":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .local v7, "opt":Ljava/lang/String;
    const/16 v8, 0x2f

    const/4 v9, 0x7

    if-eqz v0, :cond_18

    .line 34
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v13, 0x8

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v0, "--grant-write-uri-permission"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x19

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "--activity-multiple-task"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x24

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "--grant-read-uri-permission"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x18

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "--receiver-foreground"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x30

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "--receiver-no-abort"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x31

    goto/16 :goto_2

    :sswitch_5
    const-string v0, "--activity-launched-from-history"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x23

    goto/16 :goto_2

    :sswitch_6
    const-string v0, "--activity-clear-when-task-reset"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x21

    goto/16 :goto_2

    :sswitch_7
    const-string v0, "--esal"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x13

    goto/16 :goto_2

    :sswitch_8
    const-string v0, "--elal"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0xe

    goto/16 :goto_2

    :sswitch_9
    const-string v0, "--eial"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0xb

    goto/16 :goto_2

    :sswitch_a
    const-string v0, "--efal"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x11

    goto/16 :goto_2

    :sswitch_b
    const-string v0, "--selector"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x32

    goto/16 :goto_2

    :sswitch_c
    const-string v0, "--receiver-replace-pending"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :sswitch_d
    const-string v0, "--include-stopped-packages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x1d

    goto/16 :goto_2

    :sswitch_e
    const-string v0, "--exclude-stopped-packages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x1c

    goto/16 :goto_2

    :sswitch_f
    const-string v0, "--grant-persistable-uri-permission"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x1a

    goto/16 :goto_2

    :sswitch_10
    const-string v0, "--activity-single-top"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x2b

    goto/16 :goto_2

    :sswitch_11
    const-string v0, "--receiver-registered-only"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x2e

    goto/16 :goto_2

    :sswitch_12
    const-string v0, "--activity-no-user-action"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x27

    goto/16 :goto_2

    :sswitch_13
    const-string v0, "--activity-clear-top"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x20

    goto/16 :goto_2

    :sswitch_14
    const-string v0, "--activity-reset-task-if-needed"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x2a

    goto/16 :goto_2

    :sswitch_15
    const-string v0, "--activity-no-animation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x25

    goto/16 :goto_2

    :sswitch_16
    const-string v0, "--activity-exclude-from-recents"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x22

    goto/16 :goto_2

    :sswitch_17
    const-string v0, "--esn"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x6

    goto/16 :goto_2

    :sswitch_18
    const-string v0, "--esa"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x12

    goto/16 :goto_2

    :sswitch_19
    const-string v0, "--ela"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0xd

    goto/16 :goto_2

    :sswitch_1a
    const-string v0, "--eia"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0xa

    goto/16 :goto_2

    :sswitch_1b
    const-string v0, "--efa"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x10

    goto/16 :goto_2

    :sswitch_1c
    const-string v0, "--ecn"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x9

    goto/16 :goto_2

    :sswitch_1d
    const-string v0, "--ez"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x14

    goto/16 :goto_2

    :sswitch_1e
    const-string v0, "--eu"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x8

    goto/16 :goto_2

    :sswitch_1f
    const-string v0, "--es"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x5

    goto/16 :goto_2

    :sswitch_20
    const-string v0, "--el"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0xc

    goto/16 :goto_2

    :sswitch_21
    const-string v0, "--ei"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x7

    goto/16 :goto_2

    :sswitch_22
    const-string v0, "--ef"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0xf

    goto/16 :goto_2

    :sswitch_23
    const-string v0, "-t"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x2

    goto/16 :goto_2

    :sswitch_24
    const-string v0, "-p"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x16

    goto/16 :goto_2

    :sswitch_25
    const-string v0, "-n"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x15

    goto/16 :goto_2

    :sswitch_26
    const-string v0, "-f"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x17

    goto/16 :goto_2

    :sswitch_27
    const-string v0, "-e"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x4

    goto/16 :goto_2

    :sswitch_28
    const-string v0, "-d"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    goto/16 :goto_2

    :sswitch_29
    const-string v0, "-c"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x3

    goto/16 :goto_2

    :sswitch_2a
    const-string v0, "-a"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_2b
    const-string v0, "--activity-previous-is-top"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x28

    goto :goto_2

    :sswitch_2c
    const-string v0, "--activity-brought-to-front"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x1f

    goto :goto_2

    :sswitch_2d
    const-string v0, "--activity-reorder-to-front"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x29

    goto :goto_2

    :sswitch_2e
    const-string v0, "--debug-log-resolution"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x1e

    goto :goto_2

    :sswitch_2f
    const-string v0, "--activity-clear-task"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x2c

    goto :goto_2

    :sswitch_30
    const-string v0, "--activity-no-history"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x26

    goto :goto_2

    :sswitch_31
    const-string v0, "--activity-task-on-home"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x2d

    goto :goto_2

    :sswitch_32
    const-string v0, "--grant-prefix-uri-permission"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x1b

    goto :goto_2

    :goto_1
    const/4 v8, -0x1

    :goto_2
    const-string v0, "\\\\,"

    const-string v9, "Bad component name: "

    const/high16 v10, 0x20000000

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x8000000

    const-string v15, "(?<!\\\\),"

    const-string v14, ","

    packed-switch v8, :pswitch_data_0

    .line 336
    if-eqz v1, :cond_16

    move-object/from16 v10, p0

    invoke-interface {v1, v7, v10}, Lcom/termux/am/IntentCmd$CommandOptionHandler;->handleOption(Ljava/lang/String;Lcom/termux/am/ShellCommand;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_f

    .line 332
    :pswitch_0
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 334
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    move-object/from16 v10, p0

    move-object v3, v0

    goto/16 :goto_f

    .line 324
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 325
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 321
    :pswitch_2
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 318
    :pswitch_3
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 319
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 315
    :pswitch_4
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 312
    :pswitch_5
    const/16 v0, 0x4000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 309
    :pswitch_6
    const v0, 0x8000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 310
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 306
    :pswitch_7
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 303
    :pswitch_8
    const/high16 v0, 0x200000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 300
    :pswitch_9
    const/high16 v0, 0x20000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 297
    :pswitch_a
    const/high16 v0, 0x1000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 294
    :pswitch_b
    const/high16 v0, 0x40000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 295
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 291
    :pswitch_c
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 292
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 288
    :pswitch_d
    const/high16 v0, 0x10000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 285
    :pswitch_e
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 282
    :pswitch_f
    const/high16 v0, 0x100000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 279
    :pswitch_10
    const/high16 v0, 0x800000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 280
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 276
    :pswitch_11
    const/high16 v0, 0x80000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 273
    :pswitch_12
    const/high16 v0, 0x4000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 274
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 270
    :pswitch_13
    const/high16 v0, 0x400000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 267
    :pswitch_14
    invoke-virtual {v3, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 264
    :pswitch_15
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 261
    :pswitch_16
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 258
    :pswitch_17
    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 255
    :pswitch_18
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 252
    :pswitch_19
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 249
    :pswitch_1a
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 245
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 237
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 238
    .restart local v0    # "str":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    if-ne v3, v2, :cond_1

    .line 240
    const/4 v4, 0x1

    .line 243
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 226
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 227
    .restart local v0    # "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 228
    .local v8, "cn":Landroid/content/ComponentName;
    if-eqz v8, :cond_3

    .line 230
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    if-ne v3, v2, :cond_2

    .line 232
    const/4 v4, 0x1

    .line 235
    .end local v0    # "str":Ljava/lang/String;
    .end local v8    # "cn":Landroid/content/ComponentName;
    :cond_2
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 229
    .restart local v0    # "str":Ljava/lang/String;
    .restart local v8    # "cn":Landroid/content/ComponentName;
    :cond_3
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 205
    .end local v0    # "str":Ljava/lang/String;
    .end local v8    # "cn":Landroid/content/ComponentName;
    :pswitch_1e
    const/4 v0, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 206
    .local v8, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, "value":Ljava/lang/String;
    const-string v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "t"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_5

    .line 212
    :cond_4
    const-string v10, "false"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "f"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_4

    .line 216
    :cond_5
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_6

    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    move v0, v11

    .line 219
    .local v0, "arg":Z
    goto :goto_6

    .line 217
    .end local v0    # "arg":Z
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid boolean value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 213
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_7
    :goto_4
    const/4 v0, 0x0

    .local v0, "arg":Z
    goto :goto_6

    .line 211
    .end local v0    # "arg":Z
    :cond_8
    :goto_5
    const/4 v0, 0x1

    .line 222
    .restart local v0    # "arg":Z
    :goto_6
    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    .end local v0    # "arg":Z
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 190
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 191
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 195
    .restart local v9    # "value":Ljava/lang/String;
    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 196
    .local v10, "strings":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    array-length v12, v10

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    array-length v13, v10

    if-ge v12, v13, :cond_9

    .line 198
    aget-object v13, v10, v12

    invoke-virtual {v13, v0, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 200
    .end local v12    # "i":I
    :cond_9
    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 201
    const/4 v0, 0x1

    .line 203
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "strings":[Ljava/lang/String;
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_f

    .line 176
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 177
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 181
    .restart local v9    # "value":Ljava/lang/String;
    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 182
    .restart local v10    # "strings":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8
    array-length v12, v10

    if-ge v11, v12, :cond_a

    .line 183
    aget-object v12, v10, v11

    invoke-virtual {v12, v0, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 182
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 185
    .end local v11    # "i":I
    :cond_a
    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/4 v0, 0x1

    .line 188
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "strings":[Ljava/lang/String;
    .restart local v0    # "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_f

    .line 164
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, "strings":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_9
    array-length v12, v9

    if-ge v11, v12, :cond_b

    .line 169
    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 171
    .end local v11    # "i":I
    :cond_b
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 172
    const/4 v0, 0x1

    .line 174
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_f

    .line 152
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 154
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 155
    .restart local v9    # "strings":[Ljava/lang/String;
    array-length v10, v9

    new-array v10, v10, [F

    .line 156
    .local v10, "list":[F
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_a
    array-length v12, v9

    if-ge v11, v12, :cond_c

    .line 157
    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v10, v11

    .line 156
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 159
    .end local v11    # "i":I
    :cond_c
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 160
    const/4 v0, 0x1

    .line 162
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":[F
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_f

    .line 145
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 147
    .restart local v8    # "value":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 148
    const/4 v0, 0x1

    .line 150
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_f

    .line 133
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 135
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 136
    .restart local v9    # "strings":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_b
    array-length v12, v9

    if-ge v11, v12, :cond_d

    .line 138
    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 140
    .end local v11    # "i":I
    :cond_d
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 141
    const/4 v0, 0x1

    .line 143
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_f

    .line 121
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 123
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 124
    .restart local v9    # "strings":[Ljava/lang/String;
    array-length v10, v9

    new-array v10, v10, [J

    .line 125
    .local v10, "list":[J
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_c
    array-length v12, v9

    if-ge v11, v12, :cond_e

    .line 126
    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 125
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 128
    .end local v11    # "i":I
    :cond_e
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 129
    const/4 v0, 0x1

    .line 131
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":[J
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_f

    .line 115
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 117
    .restart local v8    # "value":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 119
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 104
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 106
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 107
    .restart local v9    # "strings":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_d
    array-length v12, v9

    if-ge v11, v12, :cond_f

    .line 109
    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 111
    .end local v11    # "i":I
    :cond_f
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 93
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 95
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 96
    .restart local v9    # "strings":[Ljava/lang/String;
    array-length v10, v9

    new-array v10, v10, [I

    .line 97
    .local v10, "list":[I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_e
    array-length v12, v9

    if-ge v11, v12, :cond_10

    .line 98
    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v10, v11

    .line 97
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 100
    .end local v11    # "i":I
    :cond_10
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 102
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":[I
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 84
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 86
    .restart local v8    # "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 87
    .local v10, "cn":Landroid/content/ComponentName;
    if-eqz v10, :cond_11

    .line 89
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v10    # "cn":Landroid/content/ComponentName;
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 88
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    .restart local v10    # "cn":Landroid/content/ComponentName;
    :cond_11
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 78
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v10    # "cn":Landroid/content/ComponentName;
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 80
    .restart local v8    # "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 72
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 74
    .restart local v8    # "value":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    move-object/from16 v10, p0

    goto/16 :goto_f

    .line 67
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0    # "key":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .end local v0    # "key":Ljava/lang/String;
    move-object/from16 v10, p0

    goto :goto_f

    .line 61
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 62
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 63
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    move-object/from16 v10, p0

    goto :goto_f

    .line 54
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    if-ne v3, v2, :cond_12

    .line 56
    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    .end local v4    # "hasIntentInfo":Z
    .local v0, "hasIntentInfo":Z
    goto :goto_f

    .line 55
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :cond_12
    move-object/from16 v10, p0

    goto :goto_f

    .line 48
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 49
    .end local v6    # "type":Ljava/lang/String;
    .local v0, "type":Ljava/lang/String;
    if-ne v3, v2, :cond_13

    .line 50
    const/4 v4, 0x1

    move-object/from16 v10, p0

    move-object v6, v0

    goto :goto_f

    .line 49
    :cond_13
    move-object/from16 v10, p0

    move-object v6, v0

    goto :goto_f

    .line 42
    .end local v0    # "type":Ljava/lang/String;
    .restart local v6    # "type":Ljava/lang/String;
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 43
    .end local v5    # "data":Landroid/net/Uri;
    .local v0, "data":Landroid/net/Uri;
    if-ne v3, v2, :cond_14

    .line 44
    const/4 v4, 0x1

    move-object/from16 v10, p0

    move-object v5, v0

    goto :goto_f

    .line 43
    :cond_14
    move-object/from16 v10, p0

    move-object v5, v0

    goto :goto_f

    .line 36
    .end local v0    # "data":Landroid/net/Uri;
    .restart local v5    # "data":Landroid/net/Uri;
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    if-ne v3, v2, :cond_15

    .line 38
    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    .end local v4    # "hasIntentInfo":Z
    .local v0, "hasIntentInfo":Z
    goto :goto_f

    .line 37
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :cond_15
    move-object/from16 v10, p0

    .line 341
    :goto_f
    goto/16 :goto_0

    .line 336
    :cond_16
    move-object/from16 v10, p0

    .line 339
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown option: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_18
    const/4 v0, 0x1

    move-object/from16 v10, p0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    if-eq v3, v2, :cond_19

    const/4 v11, 0x1

    goto :goto_10

    :cond_19
    const/4 v11, 0x0

    :goto_10
    move v0, v11

    .line 347
    .local v0, "hasSelector":Z
    if-eqz v0, :cond_1a

    .line 349
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 350
    move-object v3, v2

    .line 353
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/termux/am/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 354
    .local v11, "arg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 355
    const-string v12, "android.intent.category.LAUNCHER"

    const-string v13, "android.intent.action.MAIN"

    if-nez v11, :cond_1b

    .line 356
    if-eqz v0, :cond_1e

    .line 362
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 363
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_11

    .line 365
    :cond_1b
    const/16 v14, 0x3a

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_1c

    .line 368
    invoke-static {v11, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    goto :goto_11

    .line 370
    :cond_1c
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_1d

    .line 373
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 374
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_11

    .line 378
    :cond_1d
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 379
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    invoke-virtual {v2, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    :cond_1e
    :goto_11
    if-eqz v2, :cond_22

    .line 383
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 384
    .local v8, "extras":Landroid/os/Bundle;
    const/4 v9, 0x0

    move-object v12, v9

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual {v3, v9}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 385
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 386
    .local v12, "uriExtras":Landroid/os/Bundle;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 387
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1f

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 388
    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 389
    .local v9, "cats":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 390
    .local v14, "c":Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 391
    .end local v14    # "c":Ljava/lang/String;
    goto :goto_12

    .line 393
    .end local v9    # "cats":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1f
    const/16 v9, 0x48

    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 394
    if-nez v8, :cond_20

    .line 395
    move-object v8, v12

    goto :goto_13

    .line 396
    :cond_20
    if-eqz v12, :cond_21

    .line 397
    invoke-virtual {v12, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 398
    move-object v8, v12

    .line 400
    :cond_21
    :goto_13
    invoke-virtual {v3, v8}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 401
    const/4 v4, 0x1

    .line 404
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v12    # "uriExtras":Landroid/os/Bundle;
    :cond_22
    if-eqz v4, :cond_23

    .line 405
    return-object v3

    .line 404
    :cond_23
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "No intent supplied"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_data_0
    .sparse-switch
        -0x7ffea226 -> :sswitch_32
        -0x7e40bfdd -> :sswitch_31
        -0x61305b9a -> :sswitch_30
        -0x4aae571d -> :sswitch_2f
        -0x3fbe74d1 -> :sswitch_2e
        -0x328eb9b9 -> :sswitch_2d
        -0x31a9343b -> :sswitch_2c
        -0x2f378b56 -> :sswitch_2b
        0x5d4 -> :sswitch_2a
        0x5d6 -> :sswitch_29
        0x5d7 -> :sswitch_28
        0x5d8 -> :sswitch_27
        0x5d9 -> :sswitch_26
        0x5e1 -> :sswitch_25
        0x5e3 -> :sswitch_24
        0x5e7 -> :sswitch_23
        0x152a41 -> :sswitch_22
        0x152a44 -> :sswitch_21
        0x152a47 -> :sswitch_20
        0x152a4e -> :sswitch_1f
        0x152a50 -> :sswitch_1e
        0x152a55 -> :sswitch_1d
        0x2901df0 -> :sswitch_1c
        0x2901e40 -> :sswitch_1b
        0x2901e9d -> :sswitch_1a
        0x2901efa -> :sswitch_19
        0x2901fd3 -> :sswitch_18
        0x2901fe0 -> :sswitch_17
        0x41eb1c6 -> :sswitch_16
        0x54a2ed6 -> :sswitch_15
        0xb611ab9 -> :sswitch_14
        0xe1b6a37 -> :sswitch_13
        0x1998b94a -> :sswitch_12
        0x1a0135d9 -> :sswitch_11
        0x1a23762e -> :sswitch_10
        0x1f699c40 -> :sswitch_f
        0x22987a20 -> :sswitch_e
        0x2caeb912 -> :sswitch_d
        0x2e337d40 -> :sswitch_c
        0x47f6597f -> :sswitch_b
        0x4f73aa2c -> :sswitch_a
        0x4f73b56f -> :sswitch_9
        0x4f73c0b2 -> :sswitch_8
        0x4f73daf9 -> :sswitch_7
        0x50b32d5c -> :sswitch_6
        0x5359f12e -> :sswitch_5
        0x569e74a2 -> :sswitch_4
        0x62838641 -> :sswitch_3
        0x67da9e16 -> :sswitch_2
        0x69396684 -> :sswitch_1
        0x6c467a2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 47
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 410
    const-string v45, "    [--selector]"

    const-string v46, "    [<URI> | <PACKAGE> | <COMPONENT>]"

    const-string v0, "<INTENT> specifications include these flags and arguments:"

    const-string v1, "    [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>]"

    const-string v2, "    [-c <CATEGORY> [-c <CATEGORY>] ...]"

    const-string v3, "    [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]"

    const-string v4, "    [--esn <EXTRA_KEY> ...]"

    const-string v5, "    [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]"

    const-string v6, "    [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]"

    const-string v7, "    [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]"

    const-string v8, "    [--ef <EXTRA_KEY> <EXTRA_FLOAT_VALUE> ...]"

    const-string v9, "    [--eu <EXTRA_KEY> <EXTRA_URI_VALUE> ...]"

    const-string v10, "    [--ecn <EXTRA_KEY> <EXTRA_COMPONENT_NAME_VALUE>]"

    const-string v11, "    [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    const-string v12, "        (mutiple extras passed as Integer[])"

    const-string v13, "    [--eial <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    const-string v14, "        (mutiple extras passed as List<Integer>)"

    const-string v15, "    [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    const-string v16, "        (mutiple extras passed as Long[])"

    const-string v17, "    [--elal <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    const-string v18, "        (mutiple extras passed as List<Long>)"

    const-string v19, "    [--efa <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    const-string v20, "        (mutiple extras passed as Float[])"

    const-string v21, "    [--efal <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    const-string v22, "        (mutiple extras passed as List<Float>)"

    const-string v23, "    [--esa <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    const-string v24, "        (mutiple extras passed as String[]; to embed a comma into a string,"

    const-string v25, "         escape it using \"\\,\")"

    const-string v26, "    [--esal <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    const-string v27, "        (mutiple extras passed as List<String>; to embed a comma into a string,"

    const-string v28, "         escape it using \"\\,\")"

    const-string v29, "    [-f <FLAG>]"

    const-string v30, "    [--grant-read-uri-permission] [--grant-write-uri-permission]"

    const-string v31, "    [--grant-persistable-uri-permission] [--grant-prefix-uri-permission]"

    const-string v32, "    [--debug-log-resolution] [--exclude-stopped-packages]"

    const-string v33, "    [--include-stopped-packages]"

    const-string v34, "    [--activity-brought-to-front] [--activity-clear-top]"

    const-string v35, "    [--activity-clear-when-task-reset] [--activity-exclude-from-recents]"

    const-string v36, "    [--activity-launched-from-history] [--activity-multiple-task]"

    const-string v37, "    [--activity-no-animation] [--activity-no-history]"

    const-string v38, "    [--activity-no-user-action] [--activity-previous-is-top]"

    const-string v39, "    [--activity-reorder-to-front] [--activity-reset-task-if-needed]"

    const-string v40, "    [--activity-single-top] [--activity-clear-task]"

    const-string v41, "    [--activity-task-on-home]"

    const-string v42, "    [--receiver-registered-only] [--receiver-replace-pending]"

    const-string v43, "    [--receiver-foreground] [--receiver-no-abort]"

    const-string v44, "    [--receiver-include-background]"

    filled-new-array/range {v0 .. v46}, [Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "lines":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 460
    .local v3, "line":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    .end local v3    # "line":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    :cond_0
    move-object/from16 v4, p0

    return-void
.end method
