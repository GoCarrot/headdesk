.class public final Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;
.super Ljava/lang/Object;
.source "ConfigurationResponseParser_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/gson/Gson;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "gsonProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/gson/Gson;>;"
    .local p2, "sessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-boolean v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;->gsonProvider:Ljavax/inject/Provider;

    .line 23
    sget-boolean v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "gsonProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/gson/Gson;>;"
    .local p1, "sessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newConfigurationResponseParser(Lcom/google/gson/Gson;Lcom/upsight/android/analytics/internal/session/SessionManager;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;
    .locals 1
    .param p0, "gson"    # Lcom/google/gson/Gson;
    .param p1, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;

    .prologue
    .line 42
    new-instance v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;-><init>(Lcom/google/gson/Gson;Lcom/upsight/android/analytics/internal/session/SessionManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;
    .locals 3

    .prologue
    .line 29
    new-instance v2, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;->sessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-direct {v2, v0, v1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;-><init>(Lcom/google/gson/Gson;Lcom/upsight/android/analytics/internal/session/SessionManager;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;->get()Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

    move-result-object v0

    return-object v0
.end method
