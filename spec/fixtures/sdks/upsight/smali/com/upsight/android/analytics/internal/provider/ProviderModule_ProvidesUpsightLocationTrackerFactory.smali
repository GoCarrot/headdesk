.class public final Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;
.super Ljava/lang/Object;
.source "ProviderModule_ProvidesUpsightLocationTrackerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/provider/UpsightLocationTracker;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final locationTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/provider/LocationTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/analytics/internal/provider/ProviderModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/provider/ProviderModule;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/analytics/internal/provider/ProviderModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/provider/ProviderModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/provider/LocationTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "locationTrackerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/provider/LocationTracker;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-boolean v0, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;->module:Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    .line 23
    sget-boolean v0, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;->locationTrackerProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/provider/ProviderModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/analytics/internal/provider/ProviderModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/provider/ProviderModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/provider/LocationTracker;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightLocationTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "locationTrackerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/provider/LocationTracker;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;-><init>(Lcom/upsight/android/analytics/internal/provider/ProviderModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesUpsightLocationTracker(Lcom/upsight/android/analytics/internal/provider/ProviderModule;Ljava/lang/Object;)Lcom/upsight/android/analytics/provider/UpsightLocationTracker;
    .locals 1
    .param p0, "instance"    # Lcom/upsight/android/analytics/internal/provider/ProviderModule;
    .param p1, "locationTracker"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    .end local p1    # "locationTracker":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/provider/ProviderModule;->providesUpsightLocationTracker(Lcom/upsight/android/analytics/internal/provider/LocationTracker;)Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/provider/UpsightLocationTracker;
    .locals 2

    .prologue
    .line 29
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;->module:Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;->locationTrackerProvider:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    invoke-virtual {v1, v0}, Lcom/upsight/android/analytics/internal/provider/ProviderModule;->providesUpsightLocationTracker(Lcom/upsight/android/analytics/internal/provider/LocationTracker;)Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;->get()Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    move-result-object v0

    return-object v0
.end method
