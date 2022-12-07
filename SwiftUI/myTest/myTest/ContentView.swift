//
// Created by Michel Lopes.
// Copyright (c) 2021 Michel Lopes. All rights reserved.
//

import SwiftUI

// MARK: - Fields

enum FormField: CaseIterable {
    case name, lastName, age, phone, email, pass
}

// MARK: - Screen

struct ContentView: View {
    @FocusState var selectedField: FormField?
    @State private var user = User()

    var body: some View {
        BodyView {
            List {
                /// Personal Data --
                Section(header: Text("Personal")) {
                    PersonalDataView(user: $user, selectedField: $selectedField)
                }
                /// Contact Data --
                Section(header: Text("Contact")) {
                    ContactFieldsView(user: $user, selectedField: $selectedField)
                }
                /// Security Data --
                Section(header: Text("Security")) {
                    SecurityView(user: $user, selectedField: $selectedField)
                }
            }
            .listStyle(.insetGrouped)
            .animation(.easeInOut(duration: 0.2), value: selectedField)

            /// Keyboard Interaction Area --
            if selectedField != nil { KeyboardInteractionView(selectedField: $selectedField) }

            /// Form Action Buttons --
            if selectedField == nil { EndActionView(user: $user) }
        }
    }
}

// MARK: - Personal Section

struct PersonalDataView: View {
    @Binding var user: User
    var selectedField: FocusState<FormField?>.Binding

    var body: some View {
        Group {
            /// Name --
            HStack {
                Label("Name:", systemImage: "rectangle.and.pencil.and.ellipsis").foregroundColor(.black)
                TextField("MyName...", text: $user.name)
                    .keyboardType(.alphabet)
                    .focused(selectedField, equals: .name)
                    .modifier(StandardFormFieldStyle())
            }
            /// LastName --
            HStack {
                Label("LastName:", systemImage: "rectangle.and.pencil.and.ellipsis")
                    .foregroundColor(.black)
                TextField("LastName", text: $user.lastName)
                    .keyboardType(.alphabet)
                    .focused(selectedField, equals: .lastName)
                    .modifier(StandardFormFieldStyle())
            }
            /// Age --
            HStack {
                Label("Age:", systemImage: "number")
                    .foregroundColor(.black)

                TextField("MyAge..", value: $user.age, format: .number, prompt: Text("MyAge.."))
                    .focused(selectedField, equals: .age)
                    .keyboardType(.numberPad)
                    .modifier(StandardFormFieldStyle())
            }
        }
    }
}

// MARK: - Contat Section

struct ContactFieldsView: View {
    @Binding var user: User
    var selectedField: FocusState<FormField?>.Binding

    var body: some View {
        Group {
            /// Phone --
            HStack {
                Label("Phone:", systemImage: "phone.bubble.left")
                    .foregroundColor(.black)
                TextField("", value: $user.phone, format: .number, prompt: Text("MyPhone.."))
                    .focused(selectedField, equals: .phone)
                    .keyboardType(.numberPad)
                    .modifier(StandardFormFieldStyle())
            }
            /// Email --
            HStack {
                Label("Email:", systemImage: "envelope")
                    .foregroundColor(.black)
                TextField("LastName", text: $user.email)
                    .keyboardType(.alphabet)
                    .focused(selectedField, equals: .email)
                    .modifier(StandardFormFieldStyle())
            }
        }
    }
}

// MARK: - Security Section

struct SecurityView: View {
    @Binding var user: User
    var selectedField: FocusState<FormField?>.Binding

    var body: some View {
        Group {
            /// Password --
            HStack {
                Label("Password:", systemImage: "touchid")
                    .foregroundColor(.black)
                SecureField("MyPassword..", text: $user.pass)
                    .focused(selectedField, equals: .pass)
                    .modifier(StandardFormFieldStyle())
            }
        }
    }
}

// MARK: - Keyboard

struct KeyboardInteractionView: View {
    var selectedField: FocusState<FormField?>.Binding

    var body: some View {
        VStack(spacing: 0) {
            Divider()
            HStack {
                HStack(spacing: 0) {
                    /// Back to previous --
                    Button {
                        selectedField.wrappedValue = moveField(current: selectedField.wrappedValue, toPrevious: true)
                    } label: {
                        Image(systemName: "chevron.up.circle")
                            .resizable()
                            .frame(width: 22, height: 22)
                    }
                    .disabled(FormField.allCases.first == selectedField.wrappedValue)
                    .controlSize(.large)
                    .padding()

                    Divider()

                    /// Advance to next --
                    Button {
                        selectedField.wrappedValue = moveField(current: selectedField.wrappedValue, toPrevious: false)
                    } label: {
                        Image(systemName: "chevron.down.circle")
                            .resizable()
                            .frame(width: 22, height: 22)
                    }
                    .disabled(FormField.allCases.last == selectedField.wrappedValue)
                    .controlSize(.large)
                    .padding()
                }
                Spacer()

                /// Advance to next --
                Button { selectedField.wrappedValue = nil } label: {
                    Text("Done")
                        .bold()
                }
                .controlSize(.large)
                .padding()
            }
            .padding(.leading, 8)
            .padding(.trailing, 8)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40)
            .background(.white.opacity(0.9))
            .opacity(selectedField.wrappedValue == nil ? 0 : 1)
        }
    }
}

// MARK: - Form Buttons

struct EndActionView: View {
    @Binding var user: User
    @State var isSendAlertShowing = false
    @State var isCleanAlertShowing = false

    var body: some View {
        VStack {
            /// Send Button --
            Button { isSendAlertShowing = true } label: {
                Label("Enviar Formulário", systemImage: "paperplane.fill")
                    .frame(minWidth: 30, maxWidth: .infinity)
                    .font(.body.weight(.semibold))
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .alert("Obrigado, em breve entraremos em contato!", isPresented: $isSendAlertShowing) {
                Button("Ok", role: .cancel) {
                    isSendAlertShowing = false
                }
            }

            /// Clear Button --
            Button {
                isCleanAlertShowing = true
            } label: {
                Label("Limpar Formulário", systemImage: "trash")
                    .frame(minWidth: 30, maxWidth: .infinity)
                    .font(.body.weight(.light))
            }
            .buttonStyle(.borderedProminent)
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.black)
            .alert("Deseja excluir todos os dados?", isPresented: $isCleanAlertShowing) {
                Button("Cancelar", role: .cancel) {
                    isSendAlertShowing = false
                }
                Button("Excluir", role: .destructive) {
                    self.clearAllFields()
                    isSendAlertShowing = false
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .background(.thinMaterial)
    }

    /// Reset fields --
    func clearAllFields() {
        user.name = ""
        user.lastName = ""
        user.age = nil
        user.phone = nil
        user.email = ""
        user.pass = ""
    }
}

// MARK: - Custom Modifiers

struct StandardFormFieldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .disableAutocorrection(true)
            .submitLabel(.next)
            .foregroundColor(.gray)
            .font(.callout)
    }
}

// MARK: - Helpers

func moveField(current: FormField?, toPrevious: Bool = false) -> FormField {
    let list = FormField.allCases

    guard let currentField = current else {
        return .lastName
    }

    guard let currentIndex = list.firstIndex(of: currentField) else {
        return toPrevious ? .pass : .name
    }

    let desiredIndex = toPrevious ? list.index(before: currentIndex) : list.index(after: currentIndex)
    guard list.indices.contains(desiredIndex) else {
        return toPrevious ? .pass : .name
    }

    return list[desiredIndex]
}

// MARK: - Main Layout

struct BodyView<Content: View>: View {
    @State private var isInfoAlertShowing = false
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                ZStack(alignment: .bottom) {
                    /// Content --
                    self.content
                }
            }
            .navigationTitle("Register")
            /// Toolbar --
            .toolbar {
                Button { isInfoAlertShowing = true } label: {
                    Image(systemName: "info.circle")
                }
                .alert("#Let's Go🚀!", isPresented: $isInfoAlertShowing) {
                    Button("Cancelar", role: .cancel) {
                        isInfoAlertShowing = false
                    }
                }
            }
        }
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ContentView()
        }
    }
}
