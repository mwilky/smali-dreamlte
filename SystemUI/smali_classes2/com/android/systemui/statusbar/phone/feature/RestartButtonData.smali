.class public Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;
.super Ljava/lang/Object;
.source "RestartButtonData.java"


# instance fields
.field mIsDisplayCompatTask:Z

.field mShow:Z

.field mTaskId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setData(IZZ)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;->mTaskId:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;->mIsDisplayCompatTask:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;->mShow:Z

    return-void
.end method
