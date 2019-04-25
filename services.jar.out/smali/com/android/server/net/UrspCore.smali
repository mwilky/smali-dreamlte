.class public Lcom/android/server/net/UrspCore;
.super Ljava/lang/Object;
.source "UrspCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UrspService_Core"


# instance fields
.field protected mUrspService:Lcom/android/server/net/UrspService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/UrspService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/UrspCore;->mUrspService:Lcom/android/server/net/UrspService;

    return-void
.end method


# virtual methods
.method public clearUrspBlackListUidRule()V
    .locals 0

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    return-void
.end method

.method public factoryReset()V
    .locals 0

    return-void
.end method

.method public getAllUrspBlackListUidsRule()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllUrspRule()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrspMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUrspNetId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUrspRuleEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerUrspAppListner(Landroid/net/IUrspAppListener;)V
    .locals 0

    return-void
.end method

.method protected sendUrspAppBroadcast(Landroid/os/RemoteCallbackList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/IUrspAppListener;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const-string v1, "UrspService_Core"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send broadcast. type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", netid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/IUrspAppListener;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p2, p3}, Landroid/net/IUrspAppListener;->onUrspNetIdChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "UrspService_Core"

    const-string/jumbo v5, "send broadcast exception "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public setUrspBlackListUidRule(ZI)V
    .locals 0

    return-void
.end method

.method public setUrspBlackListUidRule(ZIZ)V
    .locals 0

    return-void
.end method

.method public setUrspMode(Z)V
    .locals 0

    return-void
.end method

.method public setUrspNetId(I)V
    .locals 0

    return-void
.end method

.method public setUrspRule(ZI)V
    .locals 0

    return-void
.end method

.method public setUrspRule(ZIZ)V
    .locals 0

    return-void
.end method

.method public setUrspRules(Z[I)V
    .locals 0

    return-void
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public unregisterUrspAppListner(Landroid/net/IUrspAppListener;)V
    .locals 0

    return-void
.end method

.method public writePolicy(Ljava/io/FileOutputStream;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    return-void
.end method
