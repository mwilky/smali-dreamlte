.class final Lcom/android/server/DeviceRootKeyService$BigData;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BigData"
.end annotation


# instance fields
.field private final INTENT_ACTION:Ljava/lang/String;

.field private final INTENT_FEATURE:Ljava/lang/String;

.field private final INTENT_PACKAGE:Ljava/lang/String;

.field private final INTENT_PERMISSION:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mBigData:Ljava/lang/String;

.field private mContextFrameworkEnabled:Z

.field private mContextFrameworkWritingPerm:Z

.field private mExtra:Ljava/lang/String;

.field private mFeature:Ljava/lang/String;

.field private mIsAMSLocked:Z

.field private mType:I

.field final synthetic this$0:Lcom/android/server/DeviceRootKeyService;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService;ILjava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->INTENT_FEATURE:Ljava/lang/String;

    const-string v0, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->INTENT_ACTION:Ljava/lang/String;

    const-string v0, "com.samsung.android.providers.context"

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->INTENT_PACKAGE:Ljava/lang/String;

    const-string v0, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->INTENT_PERMISSION:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mType:I

    iput-object p3, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mBigData:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mContextFrameworkEnabled:Z

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->access$700()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mContextFrameworkWritingPerm:Z

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->access$800()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/DeviceRootKeyService;->access$800()Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mIsAMSLocked:Z

    goto :goto_1

    :cond_1
    const-string v0, "DEVROOT#Service"

    const-string v2, "Failed to make BigData, mAMS is null."

    invoke-static {p1, v0, v2}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mIsAMSLocked:Z

    :goto_1
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/DeviceRootKeyService$BigData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/DeviceRootKeyService$BigData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/DeviceRootKeyService$BigData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method private makeDrkBigDataBlob()Z
    .locals 15

    const-string v0, "com.android.server.devicerootkeyservice"

    const-string v1, "CERT"

    const-string v2, "PHN-D"

    const-string v3, "PHN-P"

    const-string v4, "DRK_V2"

    const-string v5, ":"

    const/4 v6, 0x3

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mBigData:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    :try_start_0
    iget-object v8, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mBigData:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    aget-object v8, v8, v10

    move v10, v9

    :goto_0
    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    iget-object v11, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const-string v10, "PHN-D"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_1

    const-string v10, "PHN-P"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    :cond_2
    const-string v10, "com.android.server.devicerootkeyservice"

    iput-object v10, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;

    const-string v10, "CERT"

    iput-object v10, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v11

    :catch_0
    move-exception v8

    iget-object v10, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v11, "DEVROOT#Service"

    const-string v12, "Error occurs on makeDrkBigDataBlob()."

    invoke-static {v10, v11, v12}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v10, "DEVROOT#Service"

    const-string v11, "Failed to makeDrkBigDataBlob(), mBigData is null"

    invoke-static {v8, v10, v11}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v9
.end method

.method private makeKeystoreBigDataBlob()Z
    .locals 4

    const-string v0, "android.security.keystore"

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mBigData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mBigData:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;

    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mExtra:Ljava/lang/String;

    return v3

    :cond_0
    return v1
.end method


# virtual methods
.method public sendIntent()I
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mContextFrameworkEnabled:Z

    const/16 v1, -0x15

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mContextFrameworkWritingPerm:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mIsAMSLocked:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mType:I

    const/16 v2, -0x16

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v2, "DEVROOT#Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong bigdata type. mType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService$BigData;->makeKeystoreBigDataBlob()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v1, "DEVROOT#Service"

    const-string v3, "Failed to makeKeystoreBigDataBlob."

    invoke-static {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService$BigData;->makeDrkBigDataBlob()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v1, "DEVROOT#Service"

    const-string v3, "Failed to makeDrkBigDataBlob."

    invoke-static {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;

    const/16 v1, -0x17

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/android/server/DeviceRootKeyService$BigData$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceRootKeyService$BigData$1;-><init>(Lcom/android/server/DeviceRootKeyService$BigData;)V

    invoke-virtual {v0}, Lcom/android/server/DeviceRootKeyService$BigData$1;->start()V

    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v2, "DEVROOT#Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End of sendIntent, mAppId = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], mFeature = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->access$100(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v3, "DEVROOT#Service"

    const-string v4, "Error occurs on sendIntent."

    invoke-static {v2, v3, v4}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v2, "DEVROOT#Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to sendIntent, mAppId = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], mFeature = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mFeature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$BigData;->this$0:Lcom/android/server/DeviceRootKeyService;

    const-string v2, "DEVROOT#Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to sendIntent, mContextFrameworkEnabled = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mContextFrameworkEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], mContextFrameworkWritingPerm = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mContextFrameworkWritingPerm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], mIsAMSLocked = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/DeviceRootKeyService$BigData;->mIsAMSLocked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
