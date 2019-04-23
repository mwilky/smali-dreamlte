.class Lcom/android/systemui/popup/view/DataConnectionErrorDialog$2;
.super Ljava/lang/Object;
.source "DataConnectionErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->createDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/view/DataConnectionErrorDialog;

.field final synthetic val$dismissRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/view/DataConnectionErrorDialog;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog$2;->this$0:Lcom/android/systemui/popup/view/DataConnectionErrorDialog;

    iput-object p2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog$2;->val$dismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog$2;->val$dismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
