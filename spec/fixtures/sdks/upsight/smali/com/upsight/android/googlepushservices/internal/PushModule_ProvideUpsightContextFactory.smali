.class public final Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideUpsightContextFactory;
.super Ljava/lang/Object;
.source "PushModule_ProvideUpsightContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/UpsightContext;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/upsight/android/googlepushservices/internal/PushModule;


# direct methods
.method public constructor <init>(Lcom/upsight/android/googlepushservices/internal/PushModule;)V
    .locals 0
    .param p1, "module"    # Lcom/upsight/android/googlepushservices/internal/PushModule;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideUpsightContextFactory;->module:Lcom/upsight/android/googlepushservices/internal/PushModule;

    .line 13
    return-void
.end method

.method public static create(Lcom/upsight/android/googlepushservices/internal/PushModule;)Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideUpsightContextFactory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/googlepushservices/internal/PushModule;

    .prologue
    .line 22
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideUpsightContextFactory;

    invoke-direct {v0, p0}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideUpsightContextFactory;-><init>(Lcom/upsight/android/googlepushservices/internal/PushModule;)V

    return-object v0
.end method

.method public static proxyProvideUpsightContext(Lcom/upsight/android/googlepushservices/internal/PushModule;)Lcom/upsight/android/UpsightContext;
    .locals 2
    .param p0, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushModule;

    .prologue
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushModule;->provideUpsightContext()Lcom/upsight/android/UpsightContext;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/UpsightContext;
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideUpsightContextFactory;->module:Lcom/upsight/android/googlepushservices/internal/PushModule;

    .line 18
    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/PushModule;->provideUpsightContext()Lcom/upsight/android/UpsightContext;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideUpsightContextFactory;->get()Lcom/upsight/android/UpsightContext;

    move-result-object v0

    return-object v0
.end method
