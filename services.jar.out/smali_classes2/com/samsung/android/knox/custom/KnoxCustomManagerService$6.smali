.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->powerOff()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$200(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
