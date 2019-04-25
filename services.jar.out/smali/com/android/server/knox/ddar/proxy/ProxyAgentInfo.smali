.class public Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
.super Ljava/lang/Object;
.source "ProxyAgentInfo.java"


# instance fields
.field public mCompName:Landroid/content/ComponentName;

.field public mName:Ljava/lang/String;

.field public mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    iput-object p3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    move-object v2, p1

    check-cast v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    iget v4, v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_1

    :cond_2
    nop

    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProxyAgentInfo {mName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCompName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
