.class Lcom/android/server/net/MdoNotification$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MdoNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MdoNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MdoNotification;


# direct methods
.method constructor <init>(Lcom/android/server/net/MdoNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/MdoNotification$3;->this$0:Lcom/android/server/net/MdoNotification;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    const-string v0, "MdoNotification"

    const-string v1, "BT onAvailable."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/net/MdoNotification$3;->this$0:Lcom/android/server/net/MdoNotification;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/net/MdoNotification;->access$202(Lcom/android/server/net/MdoNotification;Z)Z

    iget-object v0, p0, Lcom/android/server/net/MdoNotification$3;->this$0:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "MdoNotification"

    const-string v1, "BT onLost."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/net/MdoNotification$3;->this$0:Lcom/android/server/net/MdoNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/net/MdoNotification;->access$202(Lcom/android/server/net/MdoNotification;Z)Z

    iget-object v0, p0, Lcom/android/server/net/MdoNotification$3;->this$0:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    return-void
.end method
