.class Lcom/android/settingslib/location/RecentLocationApps$1;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/location/RecentLocationApps$Request;",
        ">;"
    }
.end annotation


# virtual methods
.method public compare(Lcom/android/settingslib/location/RecentLocationApps$Request;Lcom/android/settingslib/location/RecentLocationApps$Request;)I
    .locals 4

    iget-wide v0, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->requestFinishTime:J

    iget-wide v2, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->requestFinishTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settingslib/location/RecentLocationApps$Request;

    check-cast p2, Lcom/android/settingslib/location/RecentLocationApps$Request;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/location/RecentLocationApps$1;->compare(Lcom/android/settingslib/location/RecentLocationApps$Request;Lcom/android/settingslib/location/RecentLocationApps$Request;)I

    move-result p1

    return p1
.end method
