.class public Lcom/android/server/enterprise/geofencing/GeofenceService;
.super Lcom/samsung/android/knox/location/IGeofencing$Stub;
.source "GeofenceService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
    }
.end annotation


# static fields
.field private static final CHECK_DEVICE_POSITION:I = 0x1

.field private static final DEFAULT_TIME_LIMIT:I = 0xea60

.field private static final REFRESH_GEOFENCING:I = 0x3

.field private static final START_GEOFENCING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GeofenceService"

.field private static mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;


# instance fields
.field private mActiveGeofenceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/location/IGeofencing$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$2;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->initializeHandlerThread()V

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->loadGeofenceActiveList(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/geofencing/GeofenceService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/BoundingBox;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    new-instance v1, Lcom/samsung/android/knox/location/BoundingBox;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/samsung/android/knox/location/BoundingBox;-><init>(Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;)V

    move-object v0, v1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_0
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_1
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_2
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p2, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    iget-object v5, p2, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v5, v1, v5

    if-gtz v5, :cond_1

    iget-object v5, p2, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v5, v1, v5

    if-ltz v5, :cond_1

    iget-object v5, p2, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_1

    iget-object v5, p2, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v5, v3, v5

    if-ltz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method private checkDeviceInsideCircleSpherical(Landroid/location/Location;Lcom/samsung/android/knox/location/CircularGeofence;)Z
    .locals 29

    move-object/from16 v0, p2

    const-wide v1, 0x40b8e30000000000L    # 6371.0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iget-object v7, v0, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v7, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v9, v0, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v9, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    move-wide v15, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    move-wide/from16 v25, v3

    sub-double v3, v13, v17

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v21, v21, v3

    add-double v3, v19, v21

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    const-wide v19, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v19

    move-wide/from16 v27, v1

    iget-wide v1, v0, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    cmpg-double v1, v3, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkDeviceInsideLinear(Landroid/location/Location;Lcom/samsung/android/knox/location/LinearGeofence;)Z
    .locals 8

    iget-object v6, p2, Lcom/samsung/android/knox/location/LinearGeofence;->optimizedPoints:Ljava/util/List;

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private declared-synchronized checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/Geofence;

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->sendIntenttoAdmins(Ljava/util/List;)V

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    monitor-exit p0

    return-object v2

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private checkDeviceInsidePolygon(Landroid/location/Location;Lcom/samsung/android/knox/location/PolygonalGeofence;)Z
    .locals 13

    iget-object v6, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    iget-object v8, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->pointsWithinGraceLimit:Ljava/util/List;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    move v0, v3

    if-ne v0, v2, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;DD)I"
        }
    .end annotation

    move-object v0, p1

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [D

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [D

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v7, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    aput-wide v7, v3, v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v7, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    add-int/lit8 v7, v2, -0x1

    :goto_1
    if-ge v6, v2, :cond_5

    aget-wide v8, v4, v6

    cmpl-double v8, v8, p4

    const/4 v9, 0x1

    if-lez v8, :cond_1

    move v8, v9

    goto :goto_2

    :cond_1
    move v8, v5

    :goto_2
    aget-wide v10, v4, v7

    cmpl-double v10, v10, p4

    if-lez v10, :cond_2

    goto :goto_3

    :cond_2
    move v9, v5

    :goto_3
    if-eq v8, v9, :cond_4

    aget-wide v8, v3, v7

    aget-wide v10, v3, v6

    sub-double/2addr v8, v10

    aget-wide v10, v4, v6

    sub-double v10, p4, v10

    mul-double/2addr v8, v10

    aget-wide v10, v4, v7

    aget-wide v12, v4, v6

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    aget-wide v10, v3, v6

    add-double/2addr v8, v10

    cmpg-double v8, p2, v8

    if-gtz v8, :cond_4

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_4
    add-int/lit8 v8, v6, 0x1

    move v7, v6

    move v6, v8

    goto :goto_1

    :cond_5
    return v1
.end method

.method private checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z
    .locals 3

    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/knox/location/CircularGeofence;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideCircleSpherical(Landroid/location/Location;Lcom/samsung/android/knox/location/CircularGeofence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_0
    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iget-object v0, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/knox/location/PolygonalGeofence;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygon(Landroid/location/Location;Lcom/samsung/android/knox/location/PolygonalGeofence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_1
    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/knox/location/LinearGeofence;

    iget-object v0, v0, Lcom/samsung/android/knox/location/LinearGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/knox/location/LinearGeofence;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideLinear(Landroid/location/Location;Lcom/samsung/android/knox/location/LinearGeofence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized checkMonitoring()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->setLocationManager()V

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    sget-object v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    new-instance v2, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    invoke-direct {v2, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$1;)V

    sput-object v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinTimeParameter()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinDistanceParameter()F

    move-result v5

    sget-object v7, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v6, v0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMonitoring - EX"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/location/LinearGeofence;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    div-int/lit8 v4, v0, 0x2

    if-ge v1, v4, :cond_0

    iget-object v4, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v6, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    iget-object v8, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v8, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v10, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v10, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v8, v10

    mul-double/2addr v8, v6

    new-instance v6, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v6, v4, v5, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private createGracePoints(Ljava/util/List;D)Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    const-wide v10, 0x3f747ae147ae147bL    # 0.005

    const-wide v12, 0x3ee2cc82c7677f8dL    # 8.964E-6

    mul-double v12, v12, p2

    const/4 v14, 0x0

    move-wide v15, v6

    move-wide v5, v4

    move v4, v14

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_b

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/knox/location/LatLongPoint;

    goto :goto_1

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v14, v4, 0x1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v17, v14

    check-cast v17, Lcom/samsung/android/knox/location/LatLongPoint;

    :goto_1
    move-object/from16 v14, v17

    move-wide/from16 v18, v5

    iget-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-object/from16 v20, v1

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v5, v0

    const-wide/16 v0, 0x0

    cmpl-double v5, v5, v0

    if-nez v5, :cond_2

    iget-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v5, v5, v0

    if-ltz v5, :cond_1

    iget-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v5, v8

    iput-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    goto :goto_2

    :cond_1
    iget-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v5, v8

    iput-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    :cond_2
    :goto_2
    iget-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v21, v8

    iget-wide v8, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v5, v8

    cmpl-double v5, v5, v0

    if-nez v5, :cond_4

    iget-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v5, v5, v0

    if-ltz v5, :cond_3

    iget-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v5, v10

    iput-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    goto :goto_3

    :cond_3
    iget-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v5, v10

    iput-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    :cond_4
    :goto_3
    iget-wide v5, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v8, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v5, v8

    iget-wide v8, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v8, v0

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v8, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v23, v10

    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget-wide v10, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v25, v2

    iget-wide v1, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v10, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v1

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double v8, v1, v5

    neg-double v8, v8

    mul-double v10, v8, v8

    add-double/2addr v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double v15, v12, v1

    const-wide/16 v1, 0x0

    cmpl-double v10, v5, v1

    if-lez v10, :cond_5

    iget-wide v10, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v1, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v1, v10, v1

    if-ltz v1, :cond_6

    :cond_5
    const-wide/16 v1, 0x0

    cmpg-double v10, v5, v1

    if-gez v10, :cond_7

    iget-wide v1, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v1, v1, v10

    if-lez v1, :cond_7

    :cond_6
    iget-wide v1, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v10, v8, v15

    add-double/2addr v1, v10

    iget-wide v10, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v10, v1, v10

    move-wide/from16 v26, v12

    iget-wide v12, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    div-double/2addr v10, v8

    new-instance v12, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v12, v10, v11, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-wide/from16 v26, v12

    const-wide/16 v1, 0x0

    cmpl-double v10, v5, v1

    if-lez v10, :cond_8

    iget-wide v10, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v12, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_9

    :cond_8
    cmpg-double v1, v5, v1

    if-gez v1, :cond_a

    iget-wide v1, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v1, v1, v10

    if-gez v1, :cond_a

    :cond_9
    iget-wide v1, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v10, v8, v15

    sub-double/2addr v1, v10

    iget-wide v10, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v10, v1, v10

    iget-wide v12, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    div-double/2addr v10, v8

    new-instance v12, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v12, v10, v11, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v8

    move-object/from16 v1, v20

    move-wide/from16 v8, v21

    move-wide/from16 v10, v23

    move-object/from16 v2, v25

    move-wide/from16 v12, v26

    move-object/from16 v0, p1

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v20, v1

    move-object/from16 v25, v2

    move-wide/from16 v18, v5

    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    move-wide/from16 v26, v12

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object/from16 v4, v25

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_c

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v12, v11, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    iget-wide v3, v11, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v3, v8

    sub-double/2addr v12, v3

    iget-wide v3, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v30, v15

    iget-wide v14, v10, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v14, v6

    sub-double/2addr v3, v14

    sub-double/2addr v12, v3

    sub-double v3, v6, v8

    div-double/2addr v12, v3

    mul-double v3, v6, v12

    iget-wide v14, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v32, v8

    iget-wide v8, v10, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v8, v6

    sub-double/2addr v14, v8

    add-double/2addr v3, v14

    new-instance v8, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v8, v12, v13, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v9, v20

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v0, 0x1

    move v1, v0

    add-int/lit8 v0, v2, 0x1

    move v5, v2

    move v2, v0

    move v0, v8

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    move-wide/from16 v15, v30

    goto :goto_5

    :cond_c
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-wide/from16 v30, v15

    move-object/from16 v9, v20

    return-object v9
.end method

.method private declared-synchronized deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized deleteGeofenceActiveListByAdmin(I)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_1
    :goto_1
    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :goto_2
    nop

    :try_start_2
    const-string v2, "GeofenceService"

    const-string v3, "deleteGeofenceActiveListByAdmin - EX"

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :goto_3
    nop

    :try_start_4
    const-string v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred accessing Enterprise db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    nop

    if-eqz v0, :cond_2

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_3
    move-exception v2

    nop

    :cond_2
    :goto_6
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_7
    monitor-exit p0

    throw p1
.end method

.method private static deserializeGeoFence([B)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    return-object v0

    :catch_1
    move-exception v1

    return-object v0
.end method

.method private deviceLocationUnavailableMessage(I)V
    .locals 9

    const-string v0, "GeofenceService"

    const-string v1, "DEVICE_LOCATION_UNAVAILABLE"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.DEVICE_LOCATION_UNAVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "admin_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.device.location.unavailable"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "edm.intent.extra.geofence.user.id"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "admin_uid"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eq p1, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKPUPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v6, "admin_uid"

    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eq p1, v1, :cond_2

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    const-string v7, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_GEOFENCING"

    const-string v3, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private findCollinear(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v4, v10

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v10, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v14, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move/from16 v16, v6

    move/from16 v17, v7

    iget-wide v6, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v14, v6

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iget-wide v6, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v12, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v12, v14

    mul-double/2addr v6, v12

    add-double/2addr v10, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v10, v6

    if-nez v6, :cond_2

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findFirst(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findLast(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_3
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v16, 0x1

    add-int/lit8 v7, v17, 0x1

    goto :goto_0

    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private findFirst(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/LatLongPoint;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private findLast(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/LatLongPoint;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "adminUid"

    const-string v4, "_id"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "GEOFENCING"

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "_id"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "adminUid"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p2, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "GeofenceService"

    const-string/jumbo v4, "getActiveGeofenceIdsbyAdmin - EX"

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private getEffectiveMinDistanceParameter()F
    .locals 9

    const/4 v0, 0x0

    const-string/jumbo v1, "distance"

    const-string/jumbo v2, "state"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCINGSETTINGS"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "state"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "distance"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v8, v0, v7

    if-nez v8, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    cmpl-float v7, v6, v7

    if-eqz v7, :cond_2

    cmpl-float v7, v0, v6

    if-lez v7, :cond_2

    move v0, v6

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    return v0
.end method

.method private getEffectiveMinTimeParameter()J
    .locals 12

    const-wide/16 v0, 0x0

    const-string/jumbo v2, "time"

    const-string/jumbo v3, "state"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v8, "state"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v9, "time"

    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v11, v0, v6

    if-nez v11, :cond_1

    move-wide v0, v9

    goto :goto_1

    :cond_1
    cmp-long v6, v9, v6

    if-eqz v6, :cond_2

    cmp-long v6, v0, v9

    if-lez v6, :cond_2

    move-wide v0, v9

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    cmp-long v4, v0, v6

    if-nez v4, :cond_4

    const-wide/32 v4, 0xea60

    goto :goto_2

    :cond_4
    move-wide v4, v0

    :goto_2
    return-wide v4
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 5

    const-string v0, "GeofenceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@getPackageNameForUid - uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/16 v0, 0x4e1f

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "GeofenceService"

    const-string v1, "@getPackageNameForUid - returning UMC PACKAGENAME"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "ADMIN_INFO"

    const-string v2, "adminName"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "GeofenceService"

    const-string v2, "@getPackageNameForUid - returning null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@getPackageNameForUid - returning compName.getPackageName() --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initializeHandlerThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GeofenceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-void
.end method

.method private isAdminHasGeofence(I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return v2

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_4

    :goto_2
    nop

    :try_start_2
    const-string v2, "GeofenceService"

    const-string/jumbo v3, "isAdminHasGeofence - EX"

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    :cond_1
    :goto_3
    goto :goto_5

    :goto_4
    nop

    :try_start_4
    const-string v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred accessing Enterprise db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :goto_5
    const/4 v1, 0x0

    return v1

    :goto_6
    nop

    if-eqz v0, :cond_2

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception v2

    nop

    :cond_2
    :goto_7
    throw v1
.end method

.method private isDeviceInsideGeofence(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "GeofenceService"

    const-string/jumbo v1, "isDeviceInsideGeofence"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroid/location/Criteria;

    invoke-direct {v4}, Landroid/location/Criteria;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v4, v6}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v4, v6}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v4, v5}, Landroid/location/Criteria;->setPowerRequirement(I)V

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    move-object v3, v7

    if-nez v3, :cond_0

    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v7, v4, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v7, "passive"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v7, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v7

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v5

    const-string v7, "GeofenceService"

    const-string/jumbo v8, "isDeviceInsideGeofence - EX"

    invoke-static {v7, v8, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method private declared-synchronized loadGeofenceActiveList(I)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "GEOFENCINGSETTINGS"

    const-string v6, "adminUid"

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "GEOFENCINGSETTINGS"

    const-string/jumbo v9, "state"

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "GeofenceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadGeofenceActiveList - EX"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private parseStringToFloat(Ljava/lang/String;)F
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private parseStringToLong(Ljava/lang/String;)J
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private sendIntenttoAdmins(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "GeofenceService"

    const-string/jumbo v2, "sendIntenttoAdmins"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "adminUid"

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v9, p1

    invoke-direct {v1, v9, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v11, "com.samsung.android.knox.intent.action.DEVICE_INSIDE_GEOFENCE"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v12, v0, [I

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v0, v13, :cond_1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const-string v0, "com.samsung.android.knox.intent.extra.ID"

    invoke-virtual {v11, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v11, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "admin_uid"

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v0, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v13

    const-string v0, "GeofenceService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@sendIntenttoAdmins - ownerUid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v13}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v14

    const-string v0, "GeofenceService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string v2, "@sendIntenttoAdmins - thePackageNameFortheUID = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-direct {v2, v15}, Landroid/os/UserHandle;-><init>(I)V

    const-string v15, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {v0, v11, v2, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "edm.intent.action.device.inside"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    const-string/jumbo v0, "edm.intent.extra.geofence.id"

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.extra.geofence.user.id"

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-virtual {v2, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "admin_uid"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    move-object/from16 v17, v3

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v15, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v0, v2, v15, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKPUPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v15, "admin_uid"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v18, v2

    :try_start_1
    iget-object v2, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v19, v4

    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    const-string v15, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {v2, v3, v4, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v19, v4

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    goto/16 :goto_6

    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    :try_start_3
    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "state"

    invoke-virtual {v0, v8, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.DEVICE_OUTSIDE_GEOFENCE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    const-string v0, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "admin_uid"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v0, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v0

    move v3, v0

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-direct {v4, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string v11, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {v0, v2, v4, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.device.outside"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    const-string/jumbo v0, "edm.intent.extra.geofence.user.id"

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v4, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "admin_uid"

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    const-string v12, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKPUPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v12, "admin_uid"

    iget-object v13, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    invoke-virtual {v13, v0, v14}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string v14, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v12, v11, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_5
    goto :goto_6

    :catch_4
    move-exception v0

    :goto_6
    nop

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    goto/16 :goto_1

    :cond_4
    move-object/from16 v9, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    goto/16 :goto_0

    :cond_5
    move-object/from16 v9, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    return-void
.end method

.method private serializeGeoFence(Ljava/lang/Object;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v1, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2
.end method

.method private setLocationManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private declared-synchronized updateGeofenceActiveListbyAdmin(I)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "_id"

    const-string/jumbo v2, "type"

    const-string v3, "blobdata"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_3

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "blobdata"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iput v2, v5, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    iput v3, v5, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LinearGeofence;

    iput v2, v5, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    iput v3, v5, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/CircularGeofence;

    iput v2, v5, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    iput v3, v5, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_5

    :cond_4
    :goto_2
    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_4

    :goto_3
    nop

    :try_start_2
    const-string v2, "GeofenceService"

    const-string/jumbo v3, "updateGeofenceActiveList - EX"

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_4
    nop

    :try_start_4
    const-string v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred accessing Enterprise db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    nop

    if-eqz v0, :cond_5

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_3
    move-exception v2

    nop

    :cond_5
    :goto_7
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_8
    monitor-exit p0

    throw p1
.end method

.method private validateCircularGeofence(Lcom/samsung/android/knox/location/LatLongPoint;D)Z
    .locals 5

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmpg-double v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, p1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v3, 0x4056800000000000L    # 90.0

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_1

    iget-wide v1, p1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v3, -0x3fa9800000000000L    # -90.0

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_1

    iget-wide v1, p1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v3, 0x4066800000000000L    # 180.0

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_1

    iget-wide v1, p1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v3, -0x3f99800000000000L    # -180.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private validatePolygonalGeofence(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v5, 0x4056800000000000L    # 90.0

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_1

    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v5, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_1

    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v5, 0x4066800000000000L    # 180.0

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_1

    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v5, -0x3f99800000000000L    # -180.0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_2
    return v0
.end method

.method private writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I
    .locals 4

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-nez p3, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "blobdata"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    return v2
.end method


# virtual methods
.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/CircularGeofence;)I
    .locals 6

    const-string v0, "GeofenceService"

    const-string v1, "createGeofence"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, -0x1

    iget-object v2, p2, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v3, p2, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validateCircularGeofence(Lcom/samsung/android/knox/location/LatLongPoint;D)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return v1
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/Geofence;)I
    .locals 3

    const/4 v0, -0x1

    iget v1, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/knox/location/CircularGeofence;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/CircularGeofence;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v1, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/knox/location/PolygonalGeofence;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/PolygonalGeofence;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v1, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/knox/location/LinearGeofence;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/LinearGeofence;)I

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/LinearGeofence;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "GeofenceService"

    const-string v3, "createGeofence"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v4, -0x1

    iget-wide v11, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-wide v6, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    goto :goto_0

    :cond_0
    iget-wide v6, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    const-wide v8, 0x412e848000000000L    # 1000000.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    const-wide v6, 0x412e847e00000000L    # 999999.0

    iput-wide v6, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    :cond_1
    :goto_0
    iget-object v6, v1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    iget-wide v7, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_5

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {v0, v14}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    move-result-object v15

    new-instance v16, Lcom/samsung/android/knox/location/LinearGeofence;

    move-object/from16 v5, v16

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-wide v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/knox/location/LinearGeofence;-><init>(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;D)V

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v0, v2, v7, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v4

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, -0x1

    return v5

    :cond_4
    :goto_2
    return v4

    :cond_5
    return v4
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/PolygonalGeofence;)I
    .locals 13

    const-string v0, "GeofenceService"

    const-string v1, "createGeofence"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, -0x1

    iget-object v2, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    iget-object v2, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    move-result-object v11

    iget-wide v4, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v2

    :goto_0
    move-object v9, v4

    goto :goto_1

    :cond_1
    iget-wide v4, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGracePoints(Ljava/util/List;D)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :goto_1
    new-instance v12, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iget-object v5, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    iget-wide v6, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    move-object v4, v12

    move-object v8, v2

    move-object v10, v11

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/knox/location/PolygonalGeofence;-><init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;)V

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v3, -0x1

    return v3

    :cond_3
    :goto_3
    return v1
.end method

.method public createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;
    .locals 78
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide v10, 0x3f747ae147ae147bL    # 0.005

    const-wide v12, 0x3f747ae147ae147bL    # 0.005

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide v17, 0x3ee2cc82c7677f8dL    # 8.964E-6

    mul-double v17, v17, p2

    const/16 v19, 0x0

    move-wide/from16 v20, v8

    move-wide v8, v6

    move-object/from16 v7, v16

    move/from16 v6, v19

    :goto_0
    move-wide/from16 v22, v8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_17

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_0

    add-int/lit8 v8, v6, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    goto :goto_1

    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    :goto_1
    move-object/from16 v25, v14

    move-object/from16 v24, v15

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    iget-wide v1, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v14, v1

    const-wide/16 v1, 0x0

    cmpl-double v14, v14, v1

    if-nez v14, :cond_2

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v14, v14, v1

    if-ltz v14, :cond_1

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v14, v10

    iput-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    goto :goto_2

    :cond_1
    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v14, v10

    iput-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    :cond_2
    :goto_2
    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v28, v10

    iget-wide v10, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v14, v10

    cmpl-double v10, v14, v1

    if-nez v10, :cond_4

    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v10, v10, v1

    if-ltz v10, :cond_3

    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v10, v12

    iput-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    goto :goto_3

    :cond_3
    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    :cond_4
    :goto_3
    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v10, v14

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v1, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v14, v1

    div-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v14, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v30, v12

    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v14, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v14, v12

    iget-wide v12, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v32, v3

    iget-wide v2, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v12, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v2

    invoke-direct {v1, v14, v15, v12, v13}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v12, v2, v10

    neg-double v12, v12

    mul-double v14, v12, v12

    add-double/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v20, v17, v2

    const-wide/16 v2, 0x0

    cmpl-double v14, v10, v2

    if-lez v14, :cond_5

    iget-wide v14, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v2, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v2, v14, v2

    if-ltz v2, :cond_6

    :cond_5
    const-wide/16 v2, 0x0

    cmpg-double v14, v10, v2

    if-gez v14, :cond_d

    iget-wide v2, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v2, v2, v14

    if-lez v2, :cond_d

    :cond_6
    iget-wide v2, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v14, v12, v20

    add-double/2addr v2, v14

    iget-wide v14, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v14, v2, v14

    move-wide/from16 v33, v10

    iget-wide v10, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v10, v12

    add-double/2addr v14, v10

    div-double/2addr v14, v12

    new-instance v10, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v10, v14, v15, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v10, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v22, v12, v20

    sub-double v10, v10, v22

    move-wide/from16 v35, v2

    iget-wide v2, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v2, v10, v2

    move-wide/from16 v37, v14

    iget-wide v14, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v14, v12

    add-double/2addr v2, v14

    div-double/2addr v2, v12

    new-instance v14, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v14, v2, v3, v10, v11}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_7

    move-object v14, v8

    goto :goto_4

    :cond_7
    move-object/from16 v14, v25

    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_8

    move-object v14, v9

    :cond_8
    if-eqz v6, :cond_a

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v55, v1

    move-object/from16 v54, v4

    move-object/from16 v58, v8

    move-object/from16 v59, v9

    move-object v4, v14

    move-object/from16 v15, v24

    move-object/from16 v9, v26

    move-object v14, v5

    move-object/from16 v5, v27

    goto/16 :goto_c

    :cond_a
    :goto_5
    move-wide/from16 v39, v2

    iget-wide v2, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v15, v12, v20

    add-double/2addr v2, v15

    move-wide/from16 v41, v10

    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v10, v2, v10

    move-object/from16 v43, v4

    move-object/from16 v44, v5

    iget-wide v4, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v4, v12

    add-double/2addr v10, v4

    div-double/2addr v10, v12

    if-nez v6, :cond_b

    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v10, v11, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v5, v26

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v24

    goto :goto_6

    :cond_b
    move-object/from16 v5, v26

    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v10, v11, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object v15, v4

    :goto_6
    move-wide/from16 v45, v2

    iget-wide v2, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v22, v12, v20

    sub-double v2, v2, v22

    move-wide/from16 v47, v10

    iget-wide v10, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v10, v2, v10

    move-object/from16 v49, v5

    iget-wide v4, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v4, v12

    add-double/2addr v10, v4

    div-double/2addr v10, v12

    if-nez v6, :cond_c

    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v10, v11, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v5, v27

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v55, v1

    :goto_7
    move-object/from16 v58, v8

    move-object/from16 v59, v9

    move-object v4, v14

    move-object/from16 v54, v43

    move-object/from16 v14, v44

    goto/16 :goto_9

    :cond_c
    move-object/from16 v5, v27

    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v10, v11, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v55, v1

    move-object v7, v4

    goto :goto_7

    :cond_d
    move-object/from16 v43, v4

    move-object/from16 v44, v5

    move-wide/from16 v33, v10

    move-object/from16 v49, v26

    move-object/from16 v5, v27

    const-wide/16 v2, 0x0

    cmpl-double v4, v33, v2

    if-lez v4, :cond_e

    iget-wide v10, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v4, v10, v14

    if-gtz v4, :cond_f

    :cond_e
    cmpg-double v2, v33, v2

    if-gez v2, :cond_16

    iget-wide v2, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v2, v2, v10

    if-gez v2, :cond_16

    :cond_f
    iget-wide v2, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v10, v12, v20

    sub-double/2addr v2, v10

    iget-wide v10, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v10, v2, v10

    iget-wide v14, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v14, v12

    add-double/2addr v10, v14

    div-double/2addr v10, v12

    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v10, v11, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v14, v43

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v50, v2

    iget-wide v2, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v15, v12, v20

    add-double/2addr v2, v15

    move-wide/from16 v52, v10

    iget-wide v10, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v10, v2, v10

    move-object/from16 v54, v14

    iget-wide v14, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v14, v12

    add-double/2addr v10, v14

    div-double/2addr v10, v12

    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v10, v11, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v14, v44

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_10

    move-object v4, v8

    goto :goto_8

    :cond_10
    move-object/from16 v4, v25

    :goto_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_11

    move-object v4, v9

    :cond_11
    if-eqz v6, :cond_13

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_12

    goto :goto_a

    :cond_12
    move-object/from16 v55, v1

    move-object/from16 v58, v8

    move-object/from16 v59, v9

    move-object/from16 v15, v24

    :goto_9
    move-object/from16 v9, v49

    goto/16 :goto_c

    :cond_13
    :goto_a
    move-object/from16 v55, v1

    iget-wide v0, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v15, v12, v20

    sub-double/2addr v0, v15

    move-wide/from16 v56, v2

    iget-wide v2, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v2, v0, v2

    move-object/from16 v58, v8

    move-object/from16 v59, v9

    iget-wide v8, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v8, v12

    add-double/2addr v2, v8

    div-double/2addr v2, v12

    if-nez v6, :cond_14

    new-instance v8, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v8, v2, v3, v0, v1}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v9, v49

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v24

    goto :goto_b

    :cond_14
    move-object/from16 v9, v49

    new-instance v8, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v8, v2, v3, v0, v1}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object v15, v8

    :goto_b
    move-wide/from16 v60, v0

    iget-wide v0, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v22, v12, v20

    add-double v0, v0, v22

    move-wide/from16 v62, v2

    iget-wide v2, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v2, v0, v2

    move-wide/from16 v64, v10

    iget-wide v10, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    div-double/2addr v2, v12

    if-nez v6, :cond_15

    new-instance v8, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v8, v2, v3, v0, v1}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    new-instance v8, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v8, v2, v3, v0, v1}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object v0, v8

    move-object v7, v0

    goto :goto_c

    :cond_16
    move-object/from16 v55, v1

    move-object/from16 v58, v8

    move-object/from16 v59, v9

    move-object/from16 v54, v43

    move-object/from16 v14, v44

    move-object/from16 v9, v49

    move-object/from16 v15, v24

    move-object/from16 v4, v25

    :goto_c
    add-int/lit8 v6, v6, 0x1

    move-object v2, v5

    move-object v1, v9

    move-wide v8, v12

    move-object v5, v14

    move-wide/from16 v10, v28

    move-wide/from16 v12, v30

    move-object/from16 v3, v32

    move-object/from16 v0, p1

    move-object v14, v4

    move-object/from16 v4, v54

    goto/16 :goto_0

    :cond_17
    move-object v9, v1

    move-object/from16 v32, v3

    move-object/from16 v54, v4

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    move-object/from16 v25, v14

    move-object/from16 v24, v15

    move-object v14, v5

    move-object v5, v2

    const/4 v0, 0x0

    nop

    :goto_d
    move/from16 v1, v19

    move-object/from16 v2, v32

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v1, v3, :cond_18

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object/from16 v6, v54

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v12, v0, 0x1

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v67, v6

    move-object/from16 v66, v7

    iget-wide v6, v12, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move/from16 v68, v1

    move-object/from16 v69, v2

    iget-wide v1, v12, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v1, v10

    sub-double/2addr v6, v1

    iget-wide v1, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v70, v12

    iget-wide v12, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v12, v3

    sub-double/2addr v1, v12

    sub-double/2addr v6, v1

    sub-double v1, v3, v10

    div-double/2addr v6, v1

    mul-double v1, v3, v6

    iget-wide v12, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v71, v10

    iget-wide v10, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v10, v3

    sub-double/2addr v12, v10

    add-double/2addr v1, v12

    new-instance v10, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v10, v6, v7, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v11, v0, 0x1

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v12, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v73, v1

    iget-wide v1, v11, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v1, v1, v71

    sub-double/2addr v12, v1

    iget-wide v1, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v75, v6

    iget-wide v6, v10, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v6, v3

    sub-double/2addr v1, v6

    sub-double/2addr v12, v1

    sub-double v1, v3, v71

    div-double/2addr v12, v1

    mul-double v1, v3, v12

    iget-wide v6, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-object/from16 v77, v14

    iget-wide v14, v10, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v14, v3

    sub-double/2addr v6, v14

    add-double/2addr v1, v6

    new-instance v6, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v6, v12, v13, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v19, v68, 0x1

    move-object/from16 v7, v66

    move-object/from16 v54, v67

    move-object/from16 v32, v69

    move-object/from16 v14, v77

    goto/16 :goto_d

    :cond_18
    move-object/from16 v69, v2

    move-object/from16 v66, v7

    move-object/from16 v77, v14

    move-object/from16 v67, v54

    move-object/from16 v15, v24

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_19

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_19
    return-object v9
.end method

.method public declared-synchronized destroyGeofence(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "GeofenceService"

    const-string v1, "destroyGeofence"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    move-object p1, v0

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCINGSETTINGS"

    const-string/jumbo v4, "state"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public findDistance(Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;)D
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide v2, 0x40aeed880a82edb3L    # 3958.765705195919

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget-wide v6, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    iget-wide v8, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    iget-wide v10, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double v0, v6, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v14, v0

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getGeofences(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/location/Geofence;",
            ">;"
        }
    .end annotation

    const-string v0, "GeofenceService"

    const-string/jumbo v1, "getGeofences"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    const-string v4, "_id"

    const-string/jumbo v5, "type"

    const-string v6, "blobdata"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "GEOFENCING"

    invoke-virtual {v5, v6, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_2

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v6, "type"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "blobdata"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iput v5, v8, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    iput v6, v8, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LinearGeofence;

    iput v5, v8, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    iput v6, v8, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/CircularGeofence;

    iput v5, v8, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    iput v6, v8, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_5

    :cond_3
    :goto_2
    goto :goto_5

    :catchall_0
    move-exception v2

    goto :goto_7

    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_4

    :goto_3
    nop

    :try_start_2
    const-string v5, "GeofenceService"

    const-string/jumbo v6, "getGeofences - EX"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :goto_4
    nop

    :try_start_4
    const-string v5, "GeofenceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occurred accessing Enterprise db "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_6

    :cond_4
    move-object v2, v1

    :goto_6
    return-object v2

    :goto_7
    nop

    if-eqz v3, :cond_5

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :catch_3
    move-exception v4

    nop

    :cond_5
    :goto_8
    throw v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-object v0
.end method

.method public getMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;)F
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "distance"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "time"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public isDeviceInsideGeofence(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "GEOFENCINGSETTINGS"

    const-string/jumbo v4, "state"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    nop

    move v0, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;F)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "distance"

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return v1
.end method

.method public setMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return v1
.end method

.method public startGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    const-string v0, "GeofenceService"

    const-string/jumbo v1, "startGeofencing"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    monitor-enter p0

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-eqz v3, :cond_1

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return v2

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public stopGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    const-string v0, "GeofenceService"

    const-string/jumbo v1, "stopGeofencing"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCINGSETTINGS"

    const-string/jumbo v4, "state"

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return v1
.end method

.method public systemReady()V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
