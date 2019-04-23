.class public final synthetic Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$ModeListener$xYccTfGwV7y_x00Am5mNrTUyRcE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$ModeListener$xYccTfGwV7y_x00Am5mNrTUyRcE;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;

    iput p2, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$ModeListener$xYccTfGwV7y_x00Am5mNrTUyRcE;->f$1:I

    iput p3, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$ModeListener$xYccTfGwV7y_x00Am5mNrTUyRcE;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$ModeListener$xYccTfGwV7y_x00Am5mNrTUyRcE;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$ModeListener$xYccTfGwV7y_x00Am5mNrTUyRcE;->f$1:I

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$ModeListener$xYccTfGwV7y_x00Am5mNrTUyRcE;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;->lambda$onModeChanged$0(Lcom/samsung/android/systemui/sidescreen/SideScreenController$ModeListener;II)V

    return-void
.end method
