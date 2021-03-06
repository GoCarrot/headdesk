.class public final Lcom/upsight/android/managedvariables/internal/ManagedVariables_Factory;
.super Ljava/lang/Object;
.source "ManagedVariables_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/managedvariables/internal/ManagedVariables;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final managedVariableManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;"
        }
    .end annotation
.end field

.field private final userExperienceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/managedvariables/internal/ManagedVariables_Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/managedvariables/internal/ManagedVariables_Factory;->$assertionsDisabled:Z

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
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "managedVariableManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;>;"
    .local p2, "userExperienceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/ManagedVariables_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/ManagedVariables_Factory;->managedVariableManagerProvider:Ljavax/inject/Provider;

    .line 23
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/ManagedVariables_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/ManagedVariables_Factory;->userExperienceProvider:Ljavax/inject/Provider;

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
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/managedvariables/internal/ManagedVariables;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "managedVariableManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;>;"
    .local p1, "userExperienceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;>;"
    new-instance v0, Lcom/upsight/android/managedvariables/internal/ManagedVariables_Factory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/managedvariables/internal/ManagedVariables_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newManagedVariables(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;)Lcom/upsight/android/managedvariables/internal/ManagedVariables;
    .locals 1
    .param p0, "managedVariableManager"    # Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;
    .param p1, "userExperience"    # Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;

    .prologue
    .line 44
    new-instance v0, Lcom/upsight/android/managedvariables/internal/ManagedVariables;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/managedvariables/internal/ManagedVariables;-><init>(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/managedvariables/internal/ManagedVariables;
    .locals 3

    .prologue
    .line 29
    new-instance v2, Lcom/upsight/android/managedvariables/internal/ManagedVariables;

    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/ManagedVariables_Factory;->managedVariableManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/ManagedVariables_Factory;->userExperienceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;

    invoke-direct {v2, v0, v1}, Lcom/upsight/android/managedvariables/internal/ManagedVariables;-><init>(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/ManagedVariables_Factory;->get()Lcom/upsight/android/managedvariables/internal/ManagedVariables;

    move-result-object v0

    return-object v0
.end method
