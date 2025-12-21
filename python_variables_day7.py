#Variables- Python

#Devops mostly uses json and yaml to exchange data

#Variables: Temporary storage container to store a value in the memory

#Python variables:
print("Strings..........")
print("Devops")

print("Integers.........")
print(123)

print("List.........")
skills=['jenkins','docker', 'terraform','k8s', 90, 126]
print(skills)


print("Tuple..........")
skills=('jenkins','docker', 'terraform','k8s', 90, 126)
print(skills)

print("Dict............")
dict = {"skill": "devops", "year":2025, "tech":"", "gitops":""}
print(dict)
print(dict["skill"]) #print(dict["<key>"])

print("JSON..........")
dict2 = {
    "skill":"devops",
    "year":2026,
    "tech": {
        "cloud":"amazon cloud",
        "container":"k8s",
        "ci_cd": "jenkins",
        "GitOPS":["Gitlab", "Tekton", "Flux", "ArgoCD"]
    }
}
print(dict2)

'''
yaml format:

dict2:
  skill: devops
  year: 2026
  tech: 
    cloud: amazon cloud
    container: k8s
    ci_cd: jenkins
    GitOPS:
       - Gitlab
       - Tekton
       - Flux
       - ArgoCD
'''