.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$UiManager$jAGyJIG0CKbW_bvy9p-41TXViXw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/UiManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$jAGyJIG0CKbW_bvy9p-41TXViXw;->f$0:Lcom/android/server/desktopmode/UiManager;

    iput p2, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$jAGyJIG0CKbW_bvy9p-41TXViXw;->f$1:I

    iput p3, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$jAGyJIG0CKbW_bvy9p-41TXViXw;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$jAGyJIG0CKbW_bvy9p-41TXViXw;->f$0:Lcom/android/server/desktopmode/UiManager;

    iget v1, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$jAGyJIG0CKbW_bvy9p-41TXViXw;->f$1:I

    iget v2, p0, Lcom/android/server/desktopmode/-$$Lambda$UiManager$jAGyJIG0CKbW_bvy9p-41TXViXw;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/UiManager;->lambda$dismissPresentation$9(Lcom/android/server/desktopmode/UiManager;II)V

    return-void
.end method
