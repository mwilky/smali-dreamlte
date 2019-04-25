.class Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;
.super Ljava/lang/Object;
.source "WirelessChargerAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticationStopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$402(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;I)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$200(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$500(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;ZJ)V

    :cond_1
    return-void
.end method
