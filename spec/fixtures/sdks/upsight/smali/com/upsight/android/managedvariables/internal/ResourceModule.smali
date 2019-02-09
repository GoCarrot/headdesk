.class public Lcom/upsight/android/managedvariables/internal/ResourceModule;
.super Ljava/lang/Object;
.source "ResourceModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field private static final IDENTIFIER_UXM_SCHEMA:Ljava/lang/String; = "uxm_schema"

.field public static final RES_UXM_SCHEMA:Ljava/lang/String; = "resUxmSchema"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideUxmSchemaResource(Lcom/upsight/android/UpsightContext;)Ljava/lang/Integer;
    .locals 4
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "resUxmSchema"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "uxm_schema"

    const-string v2, "raw"

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
