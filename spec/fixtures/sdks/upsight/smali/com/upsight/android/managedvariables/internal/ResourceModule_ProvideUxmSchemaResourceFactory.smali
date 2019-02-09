.class public final Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;
.super Ljava/lang/Object;
.source "ResourceModule_ProvideUxmSchemaResourceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/managedvariables/internal/ResourceModule;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/managedvariables/internal/ResourceModule;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/managedvariables/internal/ResourceModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/managedvariables/internal/ResourceModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;->module:Lcom/upsight/android/managedvariables/internal/ResourceModule;

    .line 22
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method

.method public static create(Lcom/upsight/android/managedvariables/internal/ResourceModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/managedvariables/internal/ResourceModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/managedvariables/internal/ResourceModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    new-instance v0, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;-><init>(Lcom/upsight/android/managedvariables/internal/ResourceModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideUxmSchemaResource(Lcom/upsight/android/managedvariables/internal/ResourceModule;Lcom/upsight/android/UpsightContext;)Ljava/lang/Integer;
    .locals 1
    .param p0, "instance"    # Lcom/upsight/android/managedvariables/internal/ResourceModule;
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/ResourceModule;->provideUxmSchemaResource(Lcom/upsight/android/UpsightContext;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;->module:Lcom/upsight/android/managedvariables/internal/ResourceModule;

    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 29
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1, v0}, Lcom/upsight/android/managedvariables/internal/ResourceModule;->provideUxmSchemaResource(Lcom/upsight/android/UpsightContext;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 28
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
