.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$UiManager$ZibNYb-0faeCspvI_r2_81OnuYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/UiManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$ZibNYb-0faeCspvI_r2_81OnuYY;->f$0:Lcom/android/server/desktopmode/UiManager;

    iput p2, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$ZibNYb-0faeCspvI_r2_81OnuYY;->f$1:I

    iput p3, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$ZibNYb-0faeCspvI_r2_81OnuYY;->f$2:I

    iput-object p4, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$ZibNYb-0faeCspvI_r2_81OnuYY;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$ZibNYb-0faeCspvI_r2_81OnuYY;->f$0:Lcom/android/server/desktopmode/UiManager;

    iget v1, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$ZibNYb-0faeCspvI_r2_81OnuYY;->f$1:I

    iget v2, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$ZibNYb-0faeCspvI_r2_81OnuYY;->f$2:I

    iget-object v3, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$ZibNYb-0faeCspvI_r2_81OnuYY;->f$3:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/desktopmode/UiManager;->lambda$showDialogOnUiService$4(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method
