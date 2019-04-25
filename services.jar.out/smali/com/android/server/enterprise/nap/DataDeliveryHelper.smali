.class public Lcom/android/server/enterprise/nap/DataDeliveryHelper;
.super Ljava/lang/Object;
.source "DataDeliveryHelper.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:DataDeliveryHelper"


# instance fields
.field private identifier:Ljava/lang/String;

.field private operationUserId:I

.field private profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

.field private serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    iput-object p2, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    iput p3, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private blockDnsFlow(Lorg/json/JSONObject;II)I
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v1, "dport"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "53"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "dnsuid"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    if-eq v3, p2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    :goto_2
    return v0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    return v0
.end method

.method public getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    return-object v0
.end method

.method public getServiceBinder()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->getBinderObject()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceConnection()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    return-object v0
.end method

.method public processData(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    nop

    iget-object v3, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getFlags()I

    move-result v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    const-string/jumbo v6, "uid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v5, v6

    if-eqz v5, :cond_3

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    iget v8, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    invoke-direct {p0, v2, v8, v6}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->blockDnsFlow(Lorg/json/JSONObject;II)I

    move-result v8

    if-lez v8, :cond_1

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    return-object v0

    :cond_0
    iget v9, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    if-eq v6, v9, :cond_1

    return-object v0

    :cond_1
    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eq v6, v8, :cond_3

    return-object v0

    :catch_0
    move-exception v6

    return-object v0

    :cond_3
    :goto_0
    nop

    :try_start_2
    const-string/jumbo v6, "recordtype"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "recordtype"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v6, 0x8000

    and-int/2addr v6, v3

    if-nez v6, :cond_4

    if-nez v3, :cond_5

    :cond_4
    const-string/jumbo v6, "uid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "uid"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const/16 v6, 0x100

    and-int/2addr v6, v3

    if-nez v6, :cond_6

    if-nez v3, :cond_7

    :cond_6
    const-string/jumbo v6, "pid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "pid"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const/16 v6, 0x1000

    and-int/2addr v6, v3

    if-nez v6, :cond_8

    if-nez v3, :cond_9

    :cond_8
    const-string/jumbo v6, "puid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "puid"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const/16 v6, 0x2000

    and-int/2addr v6, v3

    if-nez v6, :cond_a

    if-nez v3, :cond_b

    :cond_a
    const-string/jumbo v6, "src"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "src"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    const/16 v6, 0x8

    and-int/2addr v6, v3

    if-nez v6, :cond_c

    if-nez v3, :cond_d

    :cond_c
    const-string/jumbo v6, "dst"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "dst"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    const/16 v6, 0x4000

    and-int/2addr v6, v3

    if-nez v6, :cond_e

    if-nez v3, :cond_f

    :cond_e
    const-string/jumbo v6, "sport"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "sport"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    const/16 v6, 0x10

    and-int/2addr v6, v3

    if-nez v6, :cond_10

    if-nez v3, :cond_11

    :cond_10
    const-string/jumbo v6, "dport"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "dport"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    const/16 v6, 0x800

    and-int/2addr v6, v3

    if-nez v6, :cond_12

    if-nez v3, :cond_13

    :cond_12
    const-string/jumbo v6, "protocol"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "protocol"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_13
    :try_start_3
    const-string/jumbo v6, "procname"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_14

    goto/16 :goto_9

    :cond_14
    const/16 v6, 0x400

    and-int/2addr v6, v3

    if-nez v6, :cond_15

    if-nez v3, :cond_16

    :cond_15
    const-string/jumbo v6, "procname"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_16
    nop

    const/16 v6, 0x200

    and-int/2addr v6, v3

    if-nez v6, :cond_17

    if-nez v3, :cond_1a

    :cond_17
    :try_start_4
    const-string/jumbo v6, "uid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "procname"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "pid"

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_1a

    if-eqz v7, :cond_1a

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    goto :goto_1

    :cond_18
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "prochash"

    invoke-virtual {v4, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_19
    :goto_1
    const-string/jumbo v9, "prochash"

    invoke-virtual {v4, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_1a
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v6

    :try_start_5
    const-string/jumbo v7, "prochash"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    const/16 v6, 0x80

    and-int/2addr v6, v3

    if-nez v6, :cond_1b

    if-nez v3, :cond_1c

    :cond_1b
    const-string/jumbo v6, "parentprocname"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "parentprocname"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1c
    const/high16 v6, 0x40000

    and-int/2addr v6, v3

    if-nez v6, :cond_1d

    if-nez v3, :cond_20

    :cond_1d
    :try_start_6
    const-string/jumbo v6, "puid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "parentprocname"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ppid"

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_20

    if-eqz v7, :cond_20

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    goto :goto_4

    :cond_1e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "parentprochash"

    invoke-virtual {v4, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_1f
    :goto_4
    const-string/jumbo v9, "parentprochash"

    invoke-virtual {v4, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_20
    :goto_5
    goto :goto_6

    :catch_2
    move-exception v6

    :try_start_7
    const-string/jumbo v7, "parentprochash"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_6
    const/4 v6, 0x2

    and-int/2addr v6, v3

    if-nez v6, :cond_21

    if-nez v3, :cond_22

    :cond_21
    const-string v6, "bsent"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string v6, "bsent"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_22
    const/16 v6, 0x40

    and-int/2addr v6, v3

    if-nez v6, :cond_23

    if-nez v3, :cond_24

    :cond_23
    const-string/jumbo v6, "start"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "start"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_24
    const/4 v6, 0x4

    and-int/2addr v6, v3

    if-nez v6, :cond_25

    if-nez v3, :cond_26

    :cond_25
    const-string/jumbo v6, "end"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "end"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_26
    const/4 v6, 0x1

    and-int/2addr v6, v3

    if-nez v6, :cond_27

    if-nez v3, :cond_28

    :cond_27
    const-string v6, "brecv"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string v6, "brecv"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_28
    const/16 v6, 0x20

    and-int/2addr v6, v3

    if-nez v6, :cond_29

    if-nez v3, :cond_2a

    :cond_29
    const-string/jumbo v6, "hostname"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "hostname"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2a
    const/high16 v6, 0x10000

    and-int/2addr v6, v3

    if-nez v6, :cond_2b

    if-nez v3, :cond_2d

    :cond_2b
    :try_start_8
    const-string/jumbo v6, "dport"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2d

    const-string v7, "53"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    const-string/jumbo v7, "dnsuid"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    const-string/jumbo v7, "dnsuid"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    :cond_2c
    const-string/jumbo v7, "dnsuid"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_2d
    :goto_7
    goto :goto_8

    :catch_3
    move-exception v6

    :try_start_9
    const-string/jumbo v7, "dnsuid"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_8
    const/high16 v6, 0x20000

    and-int/2addr v6, v3

    if-nez v6, :cond_2e

    if-nez v3, :cond_2f

    :cond_2e
    const-string/jumbo v6, "ppid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "ppid"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2f
    const/high16 v6, 0x80000

    and-int/2addr v6, v3

    if-nez v6, :cond_30

    if-nez v3, :cond_31

    :cond_30
    const-string/jumbo v6, "iface"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const-string/jumbo v0, "iface"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_31
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_a

    :cond_32
    :goto_9
    return-object v0

    :catch_4
    move-exception v6

    return-object v0

    :catch_5
    move-exception v0

    const-string v2, "NetworkAnalytics:DataDeliveryHelper"

    const-string/jumbo v3, "processData: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_b

    :catch_6
    move-exception v0

    const-string v2, "NetworkAnalytics:DataDeliveryHelper"

    const-string/jumbo v3, "processData: JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_a
    nop

    :goto_b
    return-object v0
.end method

.method public setServiceConnection(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    return-void
.end method
