.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSTileHost$qv-oUqKBAuKF95oEnTvVY09K1pA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$qv-oUqKBAuKF95oEnTvVY09K1pA;->f$0:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$qv-oUqKBAuKF95oEnTvVY09K1pA;->f$0:Lcom/android/systemui/qs/QSTileHost;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QSTileHost;->lambda$onTuningChanged$2(Lcom/android/systemui/qs/QSTileHost;Ljava/util/Map$Entry;)V

    return-void
.end method
