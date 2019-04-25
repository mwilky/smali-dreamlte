.class Lcom/android/server/power/ShutdownThread$4$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$4;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread$4;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4$1;->this$0:Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2400()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$4$1;->this$0:Lcom/android/server/power/ShutdownThread$4;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$2500(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
