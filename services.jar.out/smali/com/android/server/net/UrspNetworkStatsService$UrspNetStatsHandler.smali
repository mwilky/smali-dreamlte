.class Lcom/android/server/net/UrspNetworkStatsService$UrspNetStatsHandler;
.super Landroid/os/Handler;
.source "UrspNetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/UrspNetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrspNetStatsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/UrspNetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/UrspNetworkStatsService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/UrspNetworkStatsService$UrspNetStatsHandler;->this$0:Lcom/android/server/net/UrspNetworkStatsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkStatsService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v0, "default case"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkStatsService;->log(Ljava/lang/String;)V

    return-void
.end method
