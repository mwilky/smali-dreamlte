.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailBarWakeUp(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$900(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$700(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    const/4 v2, 0x1

    const-string v3, "CocktailBarManagerService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$902(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$900(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1000(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method
