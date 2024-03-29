.class public final Lcom/upsight/android/analytics/internal/Analytics_Factory;
.super Ljava/lang/Object;
.source "Analytics_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/internal/Analytics;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final associationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final googlePlayHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightGooglePlayHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final lifeCycleTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightLifeCycleTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final locationTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightLocationTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final optOutStatusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final schemaSelectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final upsightProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation
.end field

.field private final userAttributesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/upsight/android/analytics/internal/Analytics_Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightLifeCycleTracker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightLocationTracker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightGooglePlayHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "lifeCycleTrackerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/UpsightLifeCycleTracker;>;"
    .local p3, "sessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    .local p4, "schemaSelectorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;>;"
    .local p5, "associationManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/association/AssociationManager;>;"
    .local p6, "optOutStatusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;>;"
    .local p7, "locationTrackerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/provider/UpsightLocationTracker;>;"
    .local p8, "userAttributesProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/provider/UpsightUserAttributes;>;"
    .local p9, "googlePlayHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/UpsightGooglePlayHelper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-boolean v0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->upsightProvider:Ljavax/inject/Provider;

    .line 51
    sget-boolean v0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->lifeCycleTrackerProvider:Ljavax/inject/Provider;

    .line 53
    sget-boolean v0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 55
    sget-boolean v0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_3
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->schemaSelectorProvider:Ljavax/inject/Provider;

    .line 57
    sget-boolean v0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_4
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->associationManagerProvider:Ljavax/inject/Provider;

    .line 59
    sget-boolean v0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_5
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->optOutStatusProvider:Ljavax/inject/Provider;

    .line 61
    sget-boolean v0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_6
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->locationTrackerProvider:Ljavax/inject/Provider;

    .line 63
    sget-boolean v0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_7
    iput-object p8, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->userAttributesProvider:Ljavax/inject/Provider;

    .line 65
    sget-boolean v0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    if-nez p9, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_8
    iput-object p9, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->googlePlayHelperProvider:Ljavax/inject/Provider;

    .line 67
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightLifeCycleTracker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightLocationTracker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightGooglePlayHelper;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/internal/Analytics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p1, "lifeCycleTrackerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/UpsightLifeCycleTracker;>;"
    .local p2, "sessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    .local p3, "schemaSelectorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;>;"
    .local p4, "associationManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/association/AssociationManager;>;"
    .local p5, "optOutStatusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;>;"
    .local p6, "locationTrackerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/provider/UpsightLocationTracker;>;"
    .local p7, "userAttributesProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/provider/UpsightUserAttributes;>;"
    .local p8, "googlePlayHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/UpsightGooglePlayHelper;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/Analytics_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/upsight/android/analytics/internal/Analytics_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newAnalytics(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/UpsightLifeCycleTracker;Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;Lcom/upsight/android/analytics/internal/association/AssociationManager;Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;Lcom/upsight/android/analytics/provider/UpsightLocationTracker;Lcom/upsight/android/analytics/provider/UpsightUserAttributes;Lcom/upsight/android/analytics/UpsightGooglePlayHelper;)Lcom/upsight/android/analytics/internal/Analytics;
    .locals 10
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "lifeCycleTracker"    # Lcom/upsight/android/analytics/UpsightLifeCycleTracker;
    .param p2, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .param p3, "schemaSelector"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;
    .param p4, "associationManager"    # Lcom/upsight/android/analytics/internal/association/AssociationManager;
    .param p5, "optOutStatus"    # Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;
    .param p6, "locationTracker"    # Lcom/upsight/android/analytics/provider/UpsightLocationTracker;
    .param p7, "userAttributes"    # Lcom/upsight/android/analytics/provider/UpsightUserAttributes;
    .param p8, "googlePlayHelper"    # Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    .prologue
    .line 120
    new-instance v0, Lcom/upsight/android/analytics/internal/Analytics;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/upsight/android/analytics/internal/Analytics;-><init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/UpsightLifeCycleTracker;Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;Lcom/upsight/android/analytics/internal/association/AssociationManager;Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;Lcom/upsight/android/analytics/provider/UpsightLocationTracker;Lcom/upsight/android/analytics/provider/UpsightUserAttributes;Lcom/upsight/android/analytics/UpsightGooglePlayHelper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/internal/Analytics;
    .locals 10

    .prologue
    .line 71
    new-instance v0, Lcom/upsight/android/analytics/internal/Analytics;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->upsightProvider:Ljavax/inject/Provider;

    .line 72
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightContext;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->lifeCycleTrackerProvider:Ljavax/inject/Provider;

    .line 73
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/UpsightLifeCycleTracker;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 74
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/analytics/internal/session/SessionManager;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->schemaSelectorProvider:Ljavax/inject/Provider;

    .line 75
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->associationManagerProvider:Ljavax/inject/Provider;

    .line 76
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/analytics/internal/association/AssociationManager;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->optOutStatusProvider:Ljavax/inject/Provider;

    .line 77
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

    iget-object v7, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->locationTrackerProvider:Ljavax/inject/Provider;

    .line 78
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    iget-object v8, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->userAttributesProvider:Ljavax/inject/Provider;

    .line 79
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    iget-object v9, p0, Lcom/upsight/android/analytics/internal/Analytics_Factory;->googlePlayHelperProvider:Ljavax/inject/Provider;

    .line 80
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    invoke-direct/range {v0 .. v9}, Lcom/upsight/android/analytics/internal/Analytics;-><init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/UpsightLifeCycleTracker;Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;Lcom/upsight/android/analytics/internal/association/AssociationManager;Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;Lcom/upsight/android/analytics/provider/UpsightLocationTracker;Lcom/upsight/android/analytics/provider/UpsightUserAttributes;Lcom/upsight/android/analytics/UpsightGooglePlayHelper;)V

    .line 71
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/Analytics_Factory;->get()Lcom/upsight/android/analytics/internal/Analytics;

    move-result-object v0

    return-object v0
.end method
