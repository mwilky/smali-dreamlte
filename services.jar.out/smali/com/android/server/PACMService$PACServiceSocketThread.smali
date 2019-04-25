.class final Lcom/android/server/PACMService$PACServiceSocketThread;
.super Ljava/lang/Object;
.source "PACMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PACMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PACServiceSocketThread"
.end annotation


# static fields
.field private static final NOK:I = 0x0

.field private static final OK:I = 0x1

.field private static final PAC_SERVICE_SOCKET_NAME:Ljava/lang/String; = "PACMSERVICE"

.field private static final PROD_DEV_PROPERTY:Ljava/lang/String; = "ro.boot.em.status"

.field private static final PROD_DEV_PROPERTY_STATE_DEV:Ljava/lang/String; = "0x1"

.field private static final PROD_DEV_PROPERTY_STATE_USR:Ljava/lang/String; = "0x0"

.field private static final PROD_DEV_PROPERTY_STATE_USR_WITH_EM:Ljava/lang/String; = "0x2"

.field private static final THREAD_TAG:Ljava/lang/String; = "PACMSOCKET"


# instance fields
.field private buffer:[B

.field private mLocalServerSocket:Landroid/net/LocalServerSocket;

.field private mLocalSocket:Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method private constructor <init>(Lcom/android/server/PACMService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PACMService;Lcom/android/server/PACMService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PACMService$PACServiceSocketThread;-><init>(Lcom/android/server/PACMService;)V

    return-void
.end method

.method private IsDevAndNoship()Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ro.product_ship"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "ro.boot.em.status"

    const-string v3, "0x1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0x2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private checkClassStatus(I)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v1}, Lcom/android/server/PACMService;->access$400(Lcom/android/server/PACMService;)Ljava/util/HashSet;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PACMSOCKET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is already cached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-static {}, Lcom/android/server/PACMService;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkEmState()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "PACMSOCKET"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call getStatus("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v0

    const-string v2, "PACMSOCKET"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatus ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v2}, Lcom/android/server/PACMService;->access$400(Lcom/android/server/PACMService;)Ljava/util/HashSet;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MODE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "PACMSOCKET"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tstate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v4}, Lcom/android/server/PACMService;->access$200(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", em connected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0
.end method

.method private checkEmState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->access$200(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->access$200(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->access$200(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private executeCommand(I)[B
    .locals 12

    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->access$300(Lcom/android/server/PACMService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v3, "PACMSOCKET"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "START - executeCommand :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-static {v3}, Lcom/android/server/PACMService$PAC_Packet;->getVersion([B)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const-string v5, "PACMSOCKET"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version is abnormal("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-static {v4}, Lcom/android/server/PACMService$PAC_Packet;->getCommand([B)I

    move-result v4

    const-string v6, "PACMSOCKET"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v4, :pswitch_data_0

    const-string v6, "PACMSOCKET"

    goto/16 :goto_2

    :pswitch_0
    iget-object v6, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/server/PACMService$PAC_Packet;->getItem([BI)[B

    move-result-object v6

    const-string v7, "PACMSOCKET"

    const-string v8, "PAC_Packet.PAC_PACKET_CMD_AT_CMD_CHECK:"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_8

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    const-string v8, "PACMSOCKET"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cmd : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v8}, Lcom/android/server/PACMService;->access$500(Lcom/android/server/PACMService;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->checkCommand(Ljava/util/LinkedHashMap;Ljava/lang/String;)I

    move-result v8

    const-string v9, "PACMSOCKET"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Command Type  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v9, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    const/16 v10, 0x1c

    if-ge v9, v10, :cond_3

    const/16 v9, 0xa3

    if-ne v8, v9, :cond_2

    const-string v9, "PACMSOCKET"

    const-string v10, "This Command is PROTECTED_AT_COMMAND_OPTION1"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb1

    goto/16 :goto_3

    :cond_2
    const/16 v1, 0xa1

    goto/16 :goto_3

    :cond_3
    packed-switch v8, :pswitch_data_1

    const-string v9, "PACMSOCKET"

    goto :goto_0

    :pswitch_1
    const-string v9, "PACMSOCKET"

    const-string v11, "This Command is PROTECTED_AT_COMMAND"

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v10}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkClassStatus(I)I

    move-result v9

    if-ne v5, v9, :cond_4

    const-string v9, "PACMSOCKET"

    const-string v10, "This Command is ALLOWED_PROTECTED_AT_COMMAND"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb0

    goto :goto_1

    :cond_4
    const-string v9, "PACMSOCKET"

    const-string v10, "This Command is NOT_ALLOWED_PROTECTED_AT_COMMAND"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb1

    goto :goto_1

    :pswitch_2
    const-string v9, "PACMSOCKET"

    const-string v10, "This Command is CP_AT_COMMAND"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    goto :goto_1

    :pswitch_3
    const-string v9, "PACMSOCKET"

    const-string v10, "This Command is USER_OPEN_AT_COMMAND"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    goto :goto_1

    :goto_0
    const-string v10, "This Command is not registered"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xaf

    :goto_1
    invoke-direct {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->IsDevAndNoship()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "PACMSOCKET"

    const-string v10, "This command is be temporarily allowed. but it will be blocked"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa1

    :cond_5
    goto/16 :goto_3

    :pswitch_4
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/PACMService$PAC_Packet;->getItem([BI)[B

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {p0, v7}, Lcom/android/server/PACMService$PACServiceSocketThread;->BigEndianToLittleEndian([B)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/PACMService$PACServiceSocketThread;->ByteToInt([B)I

    move-result v8

    move v6, v8

    const-string v8, "PACMSOCKET"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parsed_mode("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v6, :cond_6

    const-string v8, "PACMSOCKET"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse mode("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    invoke-direct {p0, v6}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkClassStatus(I)I

    move-result v8

    move v1, v8

    goto :goto_3

    :cond_7
    const-string v8, "PACMSOCKET"

    const-string v9, "Failed to get mode number"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown command("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, -0xffffffd

    :cond_8
    :goto_3
    const-string v6, "PACMSOCKET"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "END - executeCommand :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/PACMService$PAC_Packet;->initPacket(I)[B

    move-result-object v5

    move-object v2, v5

    if-eqz v2, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v2, v5, v6}, Lcom/android/server/PACMService$PAC_Packet;->putItem([BLjava/lang/Object;I)[B

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v5

    :cond_9
    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    monitor-exit v0

    return-object v2

    :cond_a
    :goto_5
    const-string v3, "PACMSOCKET"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buffer is abnormal("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public BigEndianToLittleEndian([B)[B
    .locals 2

    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public ByteToInt([B)I
    .locals 1

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string v1, "PACMSERVICE"

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PACMSOCKET"

    const-string v2, "Failed to excute socket service."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_2

    :try_start_1
    const-string v0, "PACMSOCKET"

    const-string/jumbo v1, "v.1, Ready to connect."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/PACMService$PACServiceSocketThread;->executeCommand(I)[B

    move-result-object v4

    if-nez v4, :cond_0

    const-string v5, "PACMSOCKET"

    const-string/jumbo v6, "ret is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    :goto_1
    const-string v0, "PACMSOCKET"

    const-string v1, "Disconnected."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "PACMSOCKET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket connection may be closed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_0

    :cond_2
    const-string v0, "PACMSOCKET"

    const-string v1, "Socket thread has been stopped."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
