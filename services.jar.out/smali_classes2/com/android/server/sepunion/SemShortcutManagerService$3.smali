.class Lcom/android/server/sepunion/SemShortcutManagerService$3;
.super Ljava/lang/Thread;
.source "SemShortcutManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemShortcutManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemShortcutManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$3;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$3;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->access$500(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    return-void
.end method
