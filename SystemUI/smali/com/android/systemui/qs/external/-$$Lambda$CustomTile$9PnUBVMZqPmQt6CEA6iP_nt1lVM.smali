.class public final synthetic Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$9PnUBVMZqPmQt6CEA6iP_nt1lVM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/external/CustomTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$9PnUBVMZqPmQt6CEA6iP_nt1lVM;->f$0:Lcom/android/systemui/qs/external/CustomTile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$9PnUBVMZqPmQt6CEA6iP_nt1lVM;->f$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->lambda$startUnlockAndRun$2(Lcom/android/systemui/qs/external/CustomTile;)V

    return-void
.end method
