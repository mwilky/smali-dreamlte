.class public Lcom/samsung/android/knox/ddar/DualDarClientManager;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;
.source "DualDarClientManager.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field static mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

.field private static mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;-><init>()V

    sput-object p1, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)Lcom/samsung/android/knox/ddar/DualDarClientManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ddar/DualDarClientManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    sput-object p1, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    return-object v0
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "CLEAR_RESET_PASSWORD_TOKEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_1
    const-string v5, "ON_PASSWORD2_AUTH"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_2
    const-string v5, "ON_BRINGUP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_3
    const-string v5, "ON_WORKSPACE_CREATION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_4
    const-string v5, "ON_DATA_LOCK_STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    goto :goto_1

    :sswitch_5
    const-string v5, "RESET_PASSWORD_WITH_TOKEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_6
    const-string v5, "IS_SUPPORTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    goto :goto_1

    :sswitch_7
    const-string v5, "ON_PASSWORD2_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_8
    const-string v5, "SET_RESET_PASSWORD_TOKEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_9
    const-string v5, "ON_WORKSPACE_DESTROY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v5, -0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "is_data_locked"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v6, v4, v5}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDataLockStateChange(IZ)V

    const-string/jumbo v6, "user_id"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    :pswitch_1
    const-string v5, "FEATURE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v6, v5}, Lcom/samsung/android/knox/ddar/IDualDARClient;->isSupported(I)Z

    move-result v3

    const-string v6, "dual_dar_response"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "user_id"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    :pswitch_2
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "NEW_PASSWORD"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v6, "RESET_PASSWORD_TOKEN"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v14

    sget-object v6, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    move v7, v4

    move-object v8, v5

    move-wide v9, v12

    move-object v11, v14

    invoke-interface/range {v6 .. v11}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onResetPasswordWithToken(I[BJ[B)Z

    move-result v3

    const-string v6, "dual_dar_response"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "user_id"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    :pswitch_3
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    sget-object v7, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v7, v4, v5, v6}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClearResetPasswordToken(IJ)V

    const/4 v3, 0x1

    const-string v7, "dual_dar_response"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v7, "user_id"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    :pswitch_4
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "EXISTING_PASSWORD"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v6, "RESET_PASSWORD_TOKEN"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v14

    sget-object v6, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    move v7, v4

    move-object v8, v5

    move-wide v9, v12

    move-object v11, v14

    invoke-interface/range {v6 .. v11}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onSetResetPasswordToken(I[BJ[B)Z

    move-result v3

    const-string v6, "dual_dar_response"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "user_id"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    :pswitch_5
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "EXISTING_PASSWORD"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "NEW_PASSWORD"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    sget-object v7, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v7, v4, v5, v6}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordChange(I[B[B)Z

    move-result v3

    const-string v7, "dual_dar_response"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v7, "user_id"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_6
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const-string v6, "EXISTING_PASSWORD"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "EXISTING_PASSWORD"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    :cond_1
    sget-object v6, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v6, v4, v5}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordAuth(I[B)Z

    move-result v3

    const-string v6, "dual_dar_response"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "user_id"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_7
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v5, v4}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARDestroyForUser(I)Z

    move-result v3

    const-string v5, "dual_dar_response"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "user_id"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_8
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v5, v4}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARSetupForUser(I)Z

    move-result v3

    const-string v5, "dual_dar_response"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "user_id"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_9
    sget-object v5, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v5}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClientBringup()Z

    move-result v3

    const-string v5, "dual_dar_response"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    nop

    :goto_2
    return-object v2

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b189c50 -> :sswitch_9
        -0x5bcb73de -> :sswitch_8
        -0x43c5e5a8 -> :sswitch_7
        -0x3c070447 -> :sswitch_6
        -0x40f8dcc -> :sswitch_5
        0x156556dd -> :sswitch_4
        0x36e621c9 -> :sswitch_3
        0x4f85492d -> :sswitch_2
        0x54a37250 -> :sswitch_1
        0x60847f17 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
