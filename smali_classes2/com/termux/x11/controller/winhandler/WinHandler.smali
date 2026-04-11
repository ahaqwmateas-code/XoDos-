.class public Lcom/termux/x11/controller/winhandler/WinHandler;
.super Ljava/lang/Object;
.source "WinHandler.java"


# static fields
.field private static final CLIENT_PORT:S = 0x1f0as

.field public static final DINPUT_MAPPER_TYPE_STANDARD:B = 0x0t

.field public static final DINPUT_MAPPER_TYPE_XINPUT:B = 0x1t

.field private static final SERVER_PORT:S = 0x1f0bs


# instance fields
.field private final actions:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final activity:Lcom/termux/x11/MainActivity;

.field private currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

.field private dinputMapperType:B

.field private final gamepadClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final gamepadStateQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "[B>;"
        }
    .end annotation
.end field

.field private initReceived:Z

.field private localhost:Ljava/net/InetAddress;

.field private onGetProcessInfoListener:Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;

.field private final receiveData:Ljava/nio/ByteBuffer;

.field private final receivePacket:Ljava/net/DatagramPacket;

.field private running:Z

.field private final sendData:Ljava/nio/ByteBuffer;

.field private final sendPacket:Ljava/net/DatagramPacket;

.field private socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Lcom/termux/x11/MainActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    .line 34
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    .line 35
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    .line 36
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->receivePacket:Ljava/net/DatagramPacket;

    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->initReceived:Z

    .line 39
    iput-boolean v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->running:Z

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->gamepadStateQueue:Ljava/util/ArrayDeque;

    .line 44
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->dinputMapperType:B

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->gamepadClients:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->activity:Lcom/termux/x11/MainActivity;

    .line 50
    return-void
.end method

.method private addAction(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 185
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRequest(BI)V
    .locals 18
    .param p1, "requestCode"    # B
    .param p2, "port"    # I

    .line 229
    move-object/from16 v8, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 320
    :sswitch_0
    iget-object v0, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 321
    .local v0, "x":S
    iget-object v1, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 326
    .local v1, "y":S
    goto/16 :goto_8

    .line 315
    .end local v0    # "x":S
    .end local v1    # "y":S
    :sswitch_1
    iput-object v0, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .line 316
    iget-object v0, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->gamepadClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 317
    goto/16 :goto_8

    .line 290
    :sswitch_2
    iget-object v3, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 291
    .local v9, "gamepadId":I
    iget-object v3, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->activity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v3}, Lcom/termux/x11/MainActivity;->getInputControlsView()Lcom/termux/x11/controller/widget/InputControlsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/x11/controller/widget/InputControlsView;->getProfile()Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v10

    .line 292
    .local v10, "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->isVirtualGamepad()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v11, v3

    .line 293
    .local v11, "useVirtualGamepad":Z
    iget-object v3, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    if-nez v3, :cond_2

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 295
    .local v3, "enabled":Z
    :goto_2
    iget-object v1, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    if-eqz v1, :cond_3

    iget-object v1, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getDeviceId()I

    move-result v1

    if-eq v1, v9, :cond_3

    iput-object v0, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .line 297
    :cond_3
    new-instance v0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object/from16 v2, p0

    move v4, v9

    move v5, v11

    move-object v6, v10

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;ZIZLcom/termux/x11/controller/inputcontrols/ControlsProfile;I)V

    invoke-direct {v8, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 312
    goto/16 :goto_8

    .line 256
    .end local v3    # "enabled":Z
    .end local v9    # "gamepadId":I
    .end local v10    # "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .end local v11    # "useVirtualGamepad":Z
    :sswitch_3
    iget-object v0, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 257
    .local v0, "isXInput":Z
    :goto_3
    iget-object v3, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-ne v3, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    move v7, v3

    .line 258
    .local v7, "notify":Z
    iget-object v3, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->activity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v3}, Lcom/termux/x11/MainActivity;->getInputControlsView()Lcom/termux/x11/controller/widget/InputControlsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/x11/controller/widget/InputControlsView;->getProfile()Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v9

    .line 259
    .local v9, "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->isVirtualGamepad()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    move v10, v3

    .line 261
    .local v10, "useVirtualGamepad":Z
    if-nez v10, :cond_8

    iget-object v3, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    if-eqz v3, :cond_7

    iget-object v3, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v3}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->isConnected()Z

    move-result v3

    if-nez v3, :cond_8

    .line 262
    :cond_7
    invoke-static {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getController(I)Lcom/termux/x11/controller/inputcontrols/ExternalController;

    move-result-object v3

    iput-object v3, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .line 265
    :cond_8
    iget-object v3, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    if-nez v3, :cond_9

    if-eqz v10, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    move v11, v1

    .line 267
    .local v11, "enabled":Z
    if-eqz v11, :cond_b

    if-eqz v7, :cond_b

    .line 268
    iget-object v1, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->gamepadClients:Ljava/util/List;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->gamepadClients:Ljava/util/List;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 270
    :cond_b
    iget-object v1, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->gamepadClients:Ljava/util/List;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 272
    :cond_c
    :goto_6
    new-instance v12, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda2;

    move-object v1, v12

    move-object/from16 v2, p0

    move v3, v11

    move v4, v10

    move-object v5, v9

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda2;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;ZZLcom/termux/x11/controller/inputcontrols/ControlsProfile;I)V

    invoke-direct {v8, v12}, Lcom/termux/x11/controller/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 287
    goto/16 :goto_8

    .line 239
    .end local v0    # "isXInput":Z
    .end local v7    # "notify":Z
    .end local v9    # "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .end local v10    # "useVirtualGamepad":Z
    .end local v11    # "enabled":Z
    :sswitch_4
    iget-object v0, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;

    if-nez v0, :cond_d

    return-void

    .line 240
    :cond_d
    iget-object v0, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    iget-object v3, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 241
    iget-object v0, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 242
    .local v0, "numProcesses":I
    iget-object v3, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 243
    .local v3, "index":I
    iget-object v4, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 244
    .local v4, "pid":I
    iget-object v5, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    .line 245
    .local v5, "memoryUsage":J
    iget-object v7, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 246
    .local v7, "affinityMask":I
    iget-object v9, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    if-ne v9, v2, :cond_e

    const/4 v15, 0x1

    goto :goto_7

    :cond_e
    const/4 v15, 0x0

    .line 248
    .local v15, "wow64Process":Z
    :goto_7
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 249
    .local v1, "bytes":[B
    iget-object v2, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 250
    invoke-static {v1}, Lcom/termux/x11/controller/core/StringUtils;->fromANSIString([B)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "name":Ljava/lang/String;
    iget-object v14, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;

    new-instance v12, Lcom/termux/x11/controller/winhandler/ProcessInfo;

    move-object v9, v12

    move v10, v4

    move-object v11, v2

    move-object/from16 v16, v1

    move-object v1, v12

    .end local v1    # "bytes":[B
    .local v16, "bytes":[B
    move-wide v12, v5

    move-object/from16 v17, v2

    move-object v2, v14

    .end local v2    # "name":Ljava/lang/String;
    .local v17, "name":Ljava/lang/String;
    move v14, v7

    invoke-direct/range {v9 .. v15}, Lcom/termux/x11/controller/winhandler/ProcessInfo;-><init>(ILjava/lang/String;JIZ)V

    invoke-interface {v2, v3, v0, v1}, Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;->onGetProcessInfo(IILcom/termux/x11/controller/winhandler/ProcessInfo;)V

    .line 253
    goto :goto_8

    .line 231
    .end local v0    # "numProcesses":I
    .end local v3    # "index":I
    .end local v4    # "pid":I
    .end local v5    # "memoryUsage":J
    .end local v7    # "affinityMask":I
    .end local v15    # "wow64Process":Z
    .end local v16    # "bytes":[B
    .end local v17    # "name":Ljava/lang/String;
    :sswitch_5
    iput-boolean v2, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->initReceived:Z

    .line 233
    iget-object v1, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, v8, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 235
    monitor-exit v1

    .line 236
    goto :goto_8

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 329
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private sendPacket(I)Z
    .locals 4
    .param p1, "port"    # I

    .line 54
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 55
    .local v1, "size":I
    if-nez v1, :cond_0

    return v0

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    iget-object v3, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->localhost:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 57
    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v2, p1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 58
    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    iget-object v3, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v0, 0x1

    return v0

    .line 61
    .end local v1    # "size":I
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method private startSendThread()V
    .locals 2

    .line 202
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method


# virtual methods
.method public bringToFront(Ljava/lang/String;)V
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 169
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/termux/x11/controller/winhandler/WinHandler;->bringToFront(Ljava/lang/String;J)V

    .line 170
    return-void
.end method

.method public bringToFront(Ljava/lang/String;J)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "handle"    # J

    .line 173
    new-instance v0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda9;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method public exec(Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    const-string v0, " "

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "cmdList":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 71
    .local v1, "filename":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget-object v2, v0, v3

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 73
    .local v2, "parameters":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/termux/x11/controller/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public getCurrentController()Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    return-object v0
.end method

.method public getDInputMapperType()B
    .locals 1

    .line 423
    iget-byte v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->dinputMapperType:B

    return v0
.end method

.method public getOnGetProcessInfoListener()Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;

    return-object v0
.end method

.method public isControllerRegistered(I)Z
    .locals 1
    .param p1, "deviceId"    # I

    .line 90
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getDeviceId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyboardEvent(BI)V
    .locals 1
    .param p1, "vkey"    # B
    .param p2, "flags"    # I

    .line 158
    iget-boolean v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->initReceived:Z

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;BI)V

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda8;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method synthetic lambda$bringToFront$7$com-termux-x11-controller-winhandler-WinHandler(Ljava/lang/String;J)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "handle"    # J

    .line 174
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 175
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 177
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 178
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 179
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 180
    const/16 v1, 0x1f0a

    invoke-direct {p0, v1}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket(I)Z

    .line 181
    return-void
.end method

.method synthetic lambda$exec$0$com-termux-x11-controller-winhandler-WinHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 75
    .local v0, "filenameBytes":[B
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 77
    .local v1, "parametersBytes":[B
    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 78
    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 80
    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 81
    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 82
    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 83
    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 84
    const/16 v2, 0x1f0a

    invoke-direct {p0, v2}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket(I)Z

    .line 85
    return-void
.end method

.method synthetic lambda$handleRequest$10$com-termux-x11-controller-winhandler-WinHandler(ZIZLcom/termux/x11/controller/inputcontrols/ControlsProfile;I)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "gamepadId"    # I
    .param p3, "useVirtualGamepad"    # Z
    .param p4, "profile"    # Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .param p5, "port"    # I

    .line 298
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 299
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 300
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 302
    if-eqz p1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 304
    if-eqz p3, :cond_0

    .line 305
    invoke-virtual {p4}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getGamepadState()Lcom/termux/x11/controller/inputcontrols/GamepadState;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->writeTo(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    iget-object v0, v0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->writeTo(Ljava/nio/ByteBuffer;)V

    .line 310
    :cond_1
    :goto_0
    invoke-direct {p0, p5}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket(I)Z

    .line 311
    return-void
.end method

.method synthetic lambda$handleRequest$9$com-termux-x11-controller-winhandler-WinHandler(ZZLcom/termux/x11/controller/inputcontrols/ControlsProfile;I)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "useVirtualGamepad"    # Z
    .param p3, "profile"    # Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .param p4, "port"    # I

    .line 273
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 274
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 276
    if-eqz p1, :cond_2

    .line 277
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getDeviceId()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p3, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 278
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->dinputMapperType:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 279
    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 280
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 281
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 282
    .end local v0    # "bytes":[B
    goto :goto_2

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 285
    :goto_2
    invoke-direct {p0, p4}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket(I)Z

    .line 286
    return-void
.end method

.method synthetic lambda$keyboardEvent$6$com-termux-x11-controller-winhandler-WinHandler(BI)V
    .locals 2
    .param p1, "vkey"    # B
    .param p2, "flags"    # I

    .line 160
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 161
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 163
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 164
    const/16 v0, 0x1f0a

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket(I)Z

    .line 165
    return-void
.end method

.method synthetic lambda$killProcess$1$com-termux-x11-controller-winhandler-WinHandler(Ljava/lang/String;)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 97
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 99
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 100
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 101
    const/16 v1, 0x1f0a

    invoke-direct {p0, v1}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket(I)Z

    .line 102
    return-void
.end method

.method synthetic lambda$listProcesses$2$com-termux-x11-controller-winhandler-WinHandler()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 107
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 108
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 110
    const/16 v0, 0x1f0a

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v1, v2}, Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;->onGetProcessInfo(IILcom/termux/x11/controller/winhandler/ProcessInfo;)V

    .line 113
    :cond_0
    return-void
.end method

.method synthetic lambda$mouseEvent$5$com-termux-x11-controller-winhandler-WinHandler(IIII)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "wheelDelta"    # I

    .line 145
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 146
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 147
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 148
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 149
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    int-to-short v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 150
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    int-to-short v1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 151
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    int-to-short v1, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 152
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 153
    const/16 v0, 0x1f0a

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket(I)Z

    .line 154
    return-void
.end method

.method synthetic lambda$sendGamepadState$12$com-termux-x11-controller-winhandler-WinHandler(ZZLcom/termux/x11/controller/inputcontrols/ControlsProfile;I)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "useVirtualGamepad"    # Z
    .param p3, "profile"    # Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .param p4, "port"    # I

    .line 372
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 373
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 374
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 376
    if-eqz p1, :cond_2

    .line 377
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getDeviceId()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p3, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 378
    if-eqz p2, :cond_1

    .line 379
    invoke-virtual {p3}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getGamepadState()Lcom/termux/x11/controller/inputcontrols/GamepadState;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->writeTo(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    iget-object v0, v0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->writeTo(Ljava/nio/ByteBuffer;)V

    .line 384
    :cond_2
    :goto_1
    invoke-direct {p0, p4}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket(I)Z

    .line 385
    return-void
.end method

.method synthetic lambda$setProcessAffinity$3$com-termux-x11-controller-winhandler-WinHandler(Ljava/lang/String;I)V
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "affinityMask"    # I

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 119
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 120
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 121
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 122
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 123
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 124
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 125
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 126
    const/16 v1, 0x1f0a

    invoke-direct {p0, v1}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket(I)Z

    .line 127
    return-void
.end method

.method synthetic lambda$setProcessAffinity$4$com-termux-x11-controller-winhandler-WinHandler(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "affinityMask"    # I

    .line 132
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 133
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 134
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 135
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 136
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 137
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->sendData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    const/16 v0, 0x1f0a

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendPacket(I)Z

    .line 139
    return-void
.end method

.method synthetic lambda$start$11$com-termux-x11-controller-winhandler-WinHandler()V
    .locals 4

    .line 346
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    .line 347
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 348
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    move-object v3, v1

    check-cast v3, Ljava/net/InetAddress;

    const/16 v3, 0x1f0b

    invoke-direct {v2, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 350
    :goto_0
    iget-boolean v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->running:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 352
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :try_start_1
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 354
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->receiveData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 355
    .local v1, "requestCode":B
    iget-object v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/termux/x11/controller/winhandler/WinHandler;->handleRequest(BI)V

    .line 356
    .end local v1    # "requestCode":B
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 359
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 360
    return-void
.end method

.method synthetic lambda$startSendThread$8$com-termux-x11-controller-winhandler-WinHandler()V
    .locals 2

    .line 203
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->running:Z

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 205
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->initReceived:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 207
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 209
    :catch_0
    move-exception v1

    :goto_2
    nop

    .line 210
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 212
    :cond_1
    return-void
.end method

.method public listProcesses()V
    .locals 1

    .line 105
    new-instance v0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda12;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;)V

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public mouseEvent(IIII)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "wheelDelta"    # I

    .line 143
    iget-boolean v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->initReceived:Z

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda7;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda7;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;IIII)V

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getDeviceId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 392
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v1, p1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->updateStateFromMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 393
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendGamepadState()V

    .line 394
    :cond_0
    return v2

    .line 396
    :cond_1
    return v2
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getDeviceId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 407
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 409
    .local v1, "action":I
    if-nez v1, :cond_0

    .line 410
    iget-object v3, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v3, p1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->updateStateFromKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 412
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 413
    iget-object v3, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v3, p1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->updateStateFromKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 416
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/termux/x11/controller/winhandler/WinHandler;->sendGamepadState()V

    .line 417
    :cond_2
    return v2

    .line 419
    .end local v1    # "action":I
    :cond_3
    return v2
.end method

.method public saveGamepadState(Lcom/termux/x11/controller/inputcontrols/GamepadState;)V
    .locals 3
    .param p1, "state"    # Lcom/termux/x11/controller/inputcontrols/GamepadState;

    .line 399
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->gamepadStateQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->gamepadStateQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->gamepadStateQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->gamepadStateQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 402
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendGamepadState()V
    .locals 11

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->initReceived:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendGamepadState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-boolean v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->initReceived:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->gamepadClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->activity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getInputControlsView()Lcom/termux/x11/controller/widget/InputControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/controller/widget/InputControlsView;->getProfile()Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v0

    .line 367
    .local v0, "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->isVirtualGamepad()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v7, v3

    .line 368
    .local v7, "useVirtualGamepad":Z
    iget-object v3, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->currentController:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    if-nez v3, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 370
    .local v3, "enabled":Z
    :goto_2
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->gamepadClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 371
    .local v9, "port":I
    new-instance v10, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;

    move-object v1, v10

    move-object v2, p0

    move v4, v7

    move-object v5, v0

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;ZZLcom/termux/x11/controller/inputcontrols/ControlsProfile;I)V

    invoke-direct {p0, v10}, Lcom/termux/x11/controller/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 386
    .end local v9    # "port":I
    goto :goto_3

    .line 387
    :cond_4
    return-void

    .line 365
    .end local v0    # "profile":Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .end local v3    # "enabled":Z
    .end local v7    # "useVirtualGamepad":Z
    :cond_5
    :goto_4
    return-void
.end method

.method public setDInputMapperType(B)V
    .locals 0
    .param p1, "dinputMapperType"    # B

    .line 427
    iput-byte p1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->dinputMapperType:B

    .line 428
    return-void
.end method

.method public setOnGetProcessInfoListener(Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;)V
    .locals 2
    .param p1, "onGetProcessInfoListener"    # Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;

    .line 196
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 197
    :try_start_0
    iput-object p1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->onGetProcessInfoListener:Lcom/termux/x11/controller/winhandler/OnGetProcessInfoListener;

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProcessAffinity(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "affinityMask"    # I

    .line 131
    new-instance v0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda11;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;II)V

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public setProcessAffinity(Ljava/lang/String;I)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "affinityMask"    # I

    .line 117
    new-instance v0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda10;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/termux/x11/controller/winhandler/WinHandler;->addAction(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public start()V
    .locals 2

    .line 333
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->localhost:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_1

    .line 335
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_1
    const-string v1, "127.0.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->localhost:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 339
    :catch_1
    move-exception v1

    :goto_0
    nop

    .line 342
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->running:Z

    .line 343
    invoke-direct {p0}, Lcom/termux/x11/controller/winhandler/WinHandler;->startSendThread()V

    .line 344
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda6;-><init>(Lcom/termux/x11/controller/winhandler/WinHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public stop()V
    .locals 2

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->running:Z

    .line 218
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->socket:Ljava/net/DatagramSocket;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler;->actions:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 225
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
